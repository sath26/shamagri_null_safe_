import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/quotation_primitive/quotation_item_presentation_classes.dart';
import 'package:shamagri_latest_flutter_version/domain/auth/i_auth_facade.dart';
import 'package:shamagri_latest_flutter_version/domain/core/errors.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/quotation.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/sold/i_sold_repository.dart';
import 'package:shamagri_latest_flutter_version/domain/sold/sold.dart';
import 'package:shamagri_latest_flutter_version/domain/sold/sold_failure.dart';
import 'package:shamagri_latest_flutter_version/domain/sold/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/user_reso/user.dart';
import 'package:shamagri_latest_flutter_version/domain/user_reso/user_failure.dart';
import 'package:shamagri_latest_flutter_version/injection.dart';

part 'selected_watcher_event.dart';
part 'selected_watcher_state.dart';
part 'selected_watcher_bloc.freezed.dart';

@injectable
class SelectedWatcherBloc
    extends Bloc<SelectedWatcherEvent, SelectedWatcherState> {
  final ISoldRepository _soldRepository;

  SelectedWatcherBloc(this._soldRepository)
      : super(SelectedWatcherState.initial()) {
    on<_Initialized>(_initialized);
    on<_Selected>(_selected);
    on<_IndividualQuotationEdited>(_individualQuotationEdited);
    on<_CalculateTotalAfterEdit>(_calculateTotalAfterEdit);
    on<_EmailChanged>(_emailChanged);
    on<_EmailValidated>(_emailValidated);
    on<_EmailValidNotSignedUpOnly>(_emailValidNotSignedUpOnly);
    on<_BuyerUserIdValidated>(_buyerUserIdValidated);
    on<_BuyerDisplayNameValidated>(_buyerDisplayNameValidated);
    on<_BuyerPhotoUrlValidated>(_buyerPhotoUrlValidated);
    on<_RateChanged>(_rateChanged);
    on<_QuantityChanged>(_quantityChanged);
    on<_Saved>(_saved);
    on<_CalculateTotal>(_calculateTotal);
    on<_FindBuyer>(_findBuyer);
  }
  StreamSubscription<Either<UserFailure, List<User>>>? _soldStreamSubscription;
  _initialized(_Initialized e, Emitter<SelectedWatcherState> emit) async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    // userID = user.id.getOrCrash();

    return e.afterSelectSoldOption!.fold(
      () => emit(state),
      (initialSold) => emit(state.copyWith(
        bill: state.bill!.copyWith(
          sellerUserId: UserIdSold(user.id!.getOrCrash()),
          sellerDisplayName: UserDisplayNameSold(user.displayName!),
          sellerPhotoUrl: UserPhotoUrlSold(user.photoUrl!),
          sellerEmail: EmailAddressSold(user.email!),
          id: initialSold.id,
          total: initialSold.total,
          buyerEmail: initialSold.buyerEmail,
          quotations: initialSold.quotations,
          buyerUserId: initialSold.buyerUserId,
          buyerDisplayName: initialSold.buyerDisplayName,
          buyerPhotoUrl: initialSold.buyerPhotoUrl,
        ),
        isEditing: true,
      )),
    );
  }

  _selected(_Selected e, Emitter<SelectedWatcherState> emit) async {
    emit(state.copyWith(
      bill: state.bill!.copyWith(
        quotations:
            List3Sold(e.items!.map((primitive) => primitive.toDomain())),
      ),
      // saveFailureOrSuccessOption: none(),
    ));
    add(SelectedWatcherEvent.calculateTotal(e.items));
  }

  _rateChanged(_RateChanged e, Emitter<SelectedWatcherState> emit) {
    final KtList<Quotation> bill = e.billQuotations!
        .getOrCrash()
        .map((d) => d.id == e.entry!.id
            ? d.copyWith(rate: QuotationRate(e.billQuotationRate!))
            : d.copyWith())
        .toList();
    return emit(state.copyWith(
        bill: state.bill!.copyWith(quotations: List3Sold(bill)),
        isEditing: true));
  }

  _emailValidated(_EmailValidated e, Emitter<SelectedWatcherState> emit) {
    return emit(state.copyWith(
        bill: state.bill!
            .copyWith(buyerEmail: EmailAddressBought(e.buyerEmail!, true))));
  }

  _emailValidNotSignedUpOnly(
      _EmailValidNotSignedUpOnly e, Emitter<SelectedWatcherState> emit) {
    return emit(state.copyWith(
        bill: state.bill!.copyWith(
            buyerEmail: EmailAddressBought(e.buyerEmail!, false),
            buyerDisplayName: UserDisplayNameSold('Shamagri User'))));
  }

  _buyerUserIdValidated(
      _BuyerUserIdValidated e, Emitter<SelectedWatcherState> emit) {
    return emit(state.copyWith(
        bill: state.bill!.copyWith(buyerUserId: UserIdSold(e.buyerUserId!))));
  }

  _buyerDisplayNameValidated(
      _BuyerDisplayNameValidated e, Emitter<SelectedWatcherState> emit) {
    return emit(state.copyWith(
        bill: state.bill!.copyWith(
            buyerDisplayName: UserDisplayNameSold(e.buyerDisplayName!))));
  }

  _buyerPhotoUrlValidated(
      _BuyerPhotoUrlValidated e, Emitter<SelectedWatcherState> emit) {
    return emit(state.copyWith(
        bill: state.bill!
            .copyWith(buyerPhotoUrl: UserPhotoUrlSold(e.buyerPhotoUrl!))));
  }

  _emailChanged(_EmailChanged e, Emitter<SelectedWatcherState> emit) async {
    var logger = Logger();

    await _soldStreamSubscription?.cancel();
    // EmailAddress(e.buyerEmail, false);
    String findFailure;

    emit(state.copyWith(
        bill: state.bill!
            .copyWith(buyerEmail: EmailAddressBought(e.buyerEmail!, false))));
    findFailure = state.bill!.buyerEmail!.value.fold(
      (f) => f.maybeMap(
        empty: (f) => 'Cannot be empty',
        invalidEmail: (f) => 'Please provide valid email address',
        notSignedUp: (f) {
          _soldStreamSubscription = _soldRepository
              .userExistOrFail(e.buyerEmail!)
              .asStream()
              .listen((failureOrUnit) {
            // add(UnitWatcherEvent.unitsReceived(failureOrUnit)),
            // logger.wtf("failureOrUnit buyerEmail" + failureOrUnit.toString());
            /* 
            
             */
            failureOrUnit.fold((l) {
              //without event, only state emit didnt work
              add(SelectedWatcherEvent.emailValidNotSignedUpOnly(e.buyerEmail));
              add(SelectedWatcherEvent.buyerUserIdValidated(" "));
              add(SelectedWatcherEvent.buyerDisplayNameValidated(
                  "Shamagri User"));
              add(SelectedWatcherEvent.buyerPhotoUrlValidated(' '));
              return logger
                  .wtf("failureOrUnit buyerEmail  left    " + l.toString());
            }, (r) {
              logger.wtf("failureOrUnit buyerEmail  right " + r.toString());
              if (r.isNotEmpty) {
                logger.v("ok its here " + e.buyerEmail!);
//todo: call emailCHnaged again for state update
                // findFailure = "validated";
                add(SelectedWatcherEvent.emailValidated(e.buyerEmail));
                add(SelectedWatcherEvent.buyerUserIdValidated(
                    r.first.id!.getOrCrash()));
                add(SelectedWatcherEvent.buyerDisplayNameValidated(
                    r.first.displayName!.getOrCrash()));
                add(SelectedWatcherEvent.buyerPhotoUrlValidated(
                    r.first.photoUrl!.getOrCrash()));

                /*   yield state.copyWith(
                        bill: state.bill.copyWith(
                            buyerEmail: EmailAddress(e.buyerEmail, true))); */
              } else {
                logger.v("why isnt this code running");
                return 'This email has not been registered yet!';
              }
            });
          });
          return "";
        },
        orElse: () => "",
      ),
      (r) {
        return "validated";
      },
    );
  }

  _quantityChanged(_QuantityChanged e, Emitter<SelectedWatcherState> emit) {
    final KtList<Quotation> bill = e.billQuotations!
        .getOrCrash()
        .map((d) => d.id == e.entry!.id
            ? d.copyWith(quantity: QuotationQuantity(e.billQUotationQuantity!))
            : d.copyWith())
        .toList();
    // e.billQuotations.minusElement(e.entry);
    emit(state.copyWith(
        bill: state.bill!.copyWith(quotations: List3Sold(bill)),
        isEditing: true));
  }

  _individualQuotationEdited(
      _IndividualQuotationEdited e, Emitter<SelectedWatcherState> emit) {
    if (e.billQuotations!
        .getOrCrash()
        .get(e.quotationIndex!)
        .failureOption
        .isNone()) {
      num total = 0;
      e.billQuotations!.getOrCrash().map((item) {
        return total =
            total + item.rate!.getOrCrash() * item.quantity!.getOrCrash();
      });
      emit(state.copyWith(
          bill: state.bill!.copyWith(
            total: SoldTotalHere(total),
            // saveFailureOrSuccessOption: none(),
          ),
          isEditing: false,
          showErrorMessages: false,
          navigationWork: true));
    } else {
      emit(state.copyWith(showErrorMessages: true, navigationWork: false));
    }
  }

  _calculateTotalAfterEdit(
      _CalculateTotalAfterEdit e, Emitter<SelectedWatcherState> emit) {
    num total = 0;
    e.billQuotations!.map((item) {
      return total = total + item.rate!.getOrCrash();
    });
    return emit(state.copyWith(
        bill: state.bill!.copyWith(
          total: SoldTotalHere(total),
          // saveFailureOrSuccessOption: none(),
        ),
        isEditing: true));
  }

  _calculateTotal(_CalculateTotal e, Emitter<SelectedWatcherState> emit) {
    num total = 0;
    e.items!.map((item) {
      return total = total + item.rate! * item.quantity!;
    });
    //todo: get quantity and rate from quotation  and sum up
    return emit(state.copyWith(
        bill: state.bill!.copyWith(
      total: SoldTotalHere(total),
      // saveFailureOrSuccessOption: none(),
    )));
  }

  _findBuyer(_FindBuyer e, Emitter<SelectedWatcherState> emit) {}
  _saved(_Saved e, Emitter<SelectedWatcherState> emit) async {
    Either<SoldFailure, Unit>? failureOrSuccess;

    emit(state.copyWith(
      isSaving: true,
      saveFailureOrSuccessOption: none(),
    ));

    if (state.bill!.failureOption.isNone()) {
      // failureOrSuccess = state.isEditing
      // ? await _soldRepository.update(state.bill)
      failureOrSuccess = await _soldRepository.create(state.bill!);
    }
    if (state.bill!.buyerUserId!.failureOrUnit.isLeft()) {}

    emit(state.copyWith(
      isSaving: false,
      showErrorMessages: true,
      saveFailureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }
/* 
  @override
  Stream<SelectedWatcherState> mapEventToState(
    SelectedWatcherEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        final userOption = await getIt<IAuthFacade>().getSignedInUser();
        final user = userOption.getOrElse(() => throw NotAuthenticatedError());
        // userID = user.id.getOrCrash();

        yield e.afterSelectSoldOption!.fold(
          () => state,
          (initialSold) => state.copyWith(
            bill: state.bill!.copyWith(
              sellerUserId: UserIdSold(user.id!.getOrCrash()),
              sellerDisplayName: UserDisplayNameSold(user.displayName!),
              sellerPhotoUrl: UserPhotoUrlSold(user.photoUrl!),
              sellerEmail: EmailAddressSold(user.email!),
              id: initialSold.id,
              total: initialSold.total,
              buyerEmail: initialSold.buyerEmail,
              quotations: initialSold.quotations,
              buyerUserId: initialSold.buyerUserId,
              buyerDisplayName: initialSold.buyerDisplayName,
              buyerPhotoUrl: initialSold.buyerPhotoUrl,
            ),
            isEditing: true,
          ),
        );
      },
      selected: (e) async* {
        yield state.copyWith(
          bill: state.bill!.copyWith(
            quotations:
                List3Sold(e.items!.map((primitive) => primitive.toDomain())),
          ),
          // saveFailureOrSuccessOption: none(),
        );
        add(SelectedWatcherEvent.calculateTotal(e.items));
      },
      rateChanged: (e) async* {
        final KtList<Quotation> bill = e.billQuotations!
            .getOrCrash()
            .map((d) => d.id == e.entry!.id
                ? d.copyWith(rate: QuotationRate(e.billQuotationRate!))
                : d.copyWith())
            .toList();
        // e.billQuotations.minusElement(e.entry);
        yield state.copyWith(
            bill: state.bill!.copyWith(quotations: List3Sold(bill)),
            isEditing: true);
        // yield SelectedWatcherState.loadBillAfterEdit(bill: bill);
        // yield state.copyWith(bill: state.bill.copyWith(quotations:quotations));
      },
      emailValidated: (e) async* {
        yield state.copyWith(
            bill: state.bill!
                .copyWith(buyerEmail: EmailAddressBought(e.buyerEmail!, true)));
      },

      buyerUserIdValidated: (e) async* {
        yield state.copyWith(
            bill:
                state.bill!.copyWith(buyerUserId: UserIdSold(e.buyerUserId!)));
      },
      buyerDisplayNameValidated: (e) async* {
        yield state.copyWith(
            bill: state.bill!.copyWith(
                buyerDisplayName: UserDisplayNameSold(e.buyerDisplayName!)));
      },
      buyerPhotoUrlValidated: (e) async* {
        yield state.copyWith(
            bill: state.bill!
                .copyWith(buyerPhotoUrl: UserPhotoUrlSold(e.buyerPhotoUrl!)));
      },
      emailChanged: (e) async* {
        //validate string as email
        //call for data from bloc
        //validate for email existence
        var logger = Logger();

        await _soldStreamSubscription?.cancel();
        // EmailAddress(e.buyerEmail, false);
        String findFailure;

        yield state.copyWith(
            bill: state.bill!.copyWith(
                buyerEmail: EmailAddressBought(e.buyerEmail!, false)));
        findFailure = state.bill!.buyerEmail!.value.fold(
          (f) => f.maybeMap(
            empty: (f) => 'Cannot be empty',
            invalidEmail: (f) => 'Please provide valid email address',
            notSignedUp: (f) {
              _soldStreamSubscription = _soldRepository
                  .userExistOrFail(e.buyerEmail!)
                  .asStream()
                  .listen((failureOrUnit) {
                // add(UnitWatcherEvent.unitsReceived(failureOrUnit)),
                // logger.wtf("failureOrUnit buyerEmail" + failureOrUnit.toString());
                /* 
            
             */
                failureOrUnit.fold(
                    (l) => logger.wtf(
                        "failureOrUnit buyerEmail  left    " + l.toString()),
                    (r) {
                  logger.wtf("failureOrUnit buyerEmail  right " + r.toString());
                  if (r.isNotEmpty) {
                    logger.v("ok its here " + e.buyerEmail!);
//todo: call emailCHnaged again for state update
                    // findFailure = "validated";
                    add(SelectedWatcherEvent.emailValidated(e.buyerEmail));
                    add(SelectedWatcherEvent.buyerUserIdValidated(
                        r.first.id!.getOrCrash()));
                    add(SelectedWatcherEvent.buyerDisplayNameValidated(
                        r.first.displayName!.getOrCrash()));
                    add(SelectedWatcherEvent.buyerPhotoUrlValidated(
                        r.first.photoUrl!.getOrCrash()));

                    /*   yield state.copyWith(
                        bill: state.bill.copyWith(
                            buyerEmail: EmailAddress(e.buyerEmail, true))); */
                  } else {
                    logger.v("why isnt this code running");
                    return 'This email has not been registered yet!';
                  }
                });
              });
              return "";
            },
            orElse: () => "",
          ),
          (r) {
            return "validated";
          },
        );
        logger.wtf("findFailure  " + findFailure.toString());

        /*  if ((findFailure != "invalidEmail") &&
            (findFailure != "empty") &&
            (findFailure != null)) { */
      },
      quantityChanged: (e) async* {
        final KtList<Quotation> bill = e.billQuotations!
            .getOrCrash()
            .map((d) => d.id == e.entry!.id
                ? d.copyWith(
                    quantity: QuotationQuantity(e.billQUotationQuantity!))
                : d.copyWith())
            .toList();
        // e.billQuotations.minusElement(e.entry);
        yield state.copyWith(
            bill: state.bill!.copyWith(quotations: List3Sold(bill)),
            isEditing: true);
      },
      individualQuotationEdited: (e) async* {
        if (e.billQuotations!
            .getOrCrash()
            .get(e.quotationIndex!)
            .failureOption
            .isNone()) {
          num total = 0;
          e.billQuotations!.getOrCrash().map((item) {
            return total =
                total + item.rate!.getOrCrash() * item.quantity!.getOrCrash();
          });
          yield state.copyWith(
              bill: state.bill!.copyWith(
                total: SoldTotalHere(total),
                // saveFailureOrSuccessOption: none(),
              ),
              isEditing: false,
              showErrorMessages: false,
              navigationWork: true);
        } else {
          yield state.copyWith(showErrorMessages: true, navigationWork: false);
        }
      },
      calculateTotalAfterEdit: (e) async* {
        num total = 0;
        e.billQuotations!.map((item) {
          return total = total + item.rate!.getOrCrash();
        });
        yield state.copyWith(
            bill: state.bill!.copyWith(
              total: SoldTotalHere(total),
              // saveFailureOrSuccessOption: none(),
            ),
            isEditing: true);
      },
      calculateTotal: (e) async* {
        /* 
         newTotalInvoice() {
      let total = 0;
      this.multiple.forEach(x => {
        total = total + x.value.rate * x.value.quantity;
      });
      return total; // return is important in computed()
    }
         */
        num total = 0;
        e.items!.map((item) {
          return total = total + item.rate! * item.quantity!;
        });
        //todo: get quantity and rate from quotation  and sum up
        yield state.copyWith(
            bill: state.bill!.copyWith(
          total: SoldTotalHere(total),
          // saveFailureOrSuccessOption: none(),
        ));
      }, //similar to todoChanged
      findBuyer: (e) async* {},
      saved: (e) async* {
        Either<SoldFailure, Unit>? failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        if (state.bill!.failureOption.isNone()) {
          // failureOrSuccess = state.isEditing
          // ? await _soldRepository.update(state.bill)
          failureOrSuccess = await _soldRepository.create(state.bill!);
        }

        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  } */
}
