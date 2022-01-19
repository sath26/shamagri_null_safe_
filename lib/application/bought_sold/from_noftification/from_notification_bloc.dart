import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
// import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
// import 'package:shamagri_latest_flutter_version/application/bought_sold/quotation_primitive/quotation_item_presentation_classes.dart';
import 'package:shamagri_latest_flutter_version/domain/bought/i_bought_repository.dart';
import 'package:shamagri_latest_flutter_version/domain/not_form_bought/not_form_bought.dart';
import 'package:shamagri_latest_flutter_version/domain/not_form_bought/not_form_bought_failure.dart';
// import 'package:shamagri_latest_flutter_version/domain/quotation_reso/quotation.dart';
// import 'package:shamagri_latest_flutter_version/domain/quotation_reso/value_objects.dart';
// import 'package:shamagri_latest_flutter_version/domain/sold/i_sold_repository.dart';
// import 'package:shamagri_latest_flutter_version/domain/sold/sold.dart';
// import 'package:shamagri_latest_flutter_version/domain/sold/sold_failure.dart';
// import 'package:shamagri_latest_flutter_version/domain/sold/value_objects.dart';
// import 'package:shamagri_latest_flutter_version/domain/sold_not_form/sold_not_form.dart';
// import 'package:shamagri_latest_flutter_version/domain/sold_not_form/sold_not_form_failure.dart';

part 'from_notification_event.dart';
part 'from_notification_state.dart';
part 'from_notification_bloc.freezed.dart';

@injectable
class FromNotificationBloc
    extends Bloc<FromNotificationEvent, FromNotificationState> {
  final IBoughtRepository _boughtRepository;

  FromNotificationBloc(this._boughtRepository)
      : super(FromNotificationState.initial());
  // StreamSubscription<Either<SoldNotFormFailure, bool>> _soldStreamSubscription;
  StreamSubscription<Either<BoughtNotFormFailure, List<BoughtNotForm>>>?
      _listBoughtBoughtNotFormStreamSubscription;
  @override
  Stream<FromNotificationState> mapEventToState(
    FromNotificationEvent event,
  ) async* {
    yield* event.map(
      from_notification: (e) async* {
        yield const FromNotificationState.loadInProgress();
        await _listBoughtBoughtNotFormStreamSubscription?.cancel();
        _listBoughtBoughtNotFormStreamSubscription = _boughtRepository
            .from_notification(
                e.sold_and_bought_Id, e.soldInvoice_boughtInvoice_Id)
            .listen(
          (failureOrFromNotificationBought) {
            return add(FromNotificationEvent.boughtNotFormReceived(
                failureOrFromNotificationBought));
          },
        );
      },
      boughtNotFormReceived: (e) async* {
        yield e.failureOrFromNotificationBought.fold(
          (f) => FromNotificationState.loadFailure(f),
          (boughtNotForm) => FromNotificationState.loadSuccess(boughtNotForm),
        );
      },
    );
  }
}
