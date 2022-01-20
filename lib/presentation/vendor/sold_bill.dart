import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart' as m;
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:implicitly_animated_reorderable_list/implicitly_animated_reorderable_list.dart';
import 'package:kt_dart/collection.dart';
import 'package:logger/logger.dart';

import 'package:shamagri_latest_flutter_version/application/auth/auth_bloc.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/quotation_primitive/quotation_item_presentation_classes.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/quotation_primitive/build_context_x.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/selected_individual_edit_for_sold_not_bought/selected_watcher_bloc.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/single_invoice_from_list/single_invoice_watcher_bloc.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/quotation.dart';
import 'package:shamagri_latest_flutter_version/domain/sold/sold.dart';
import 'package:shamagri_latest_flutter_version/domain/sold_not_form/sold_not_form.dart';
import 'package:shamagri_latest_flutter_version/injection.dart';
import 'package:shamagri_latest_flutter_version/presentation/routes/router.gr.dart';
import 'package:shamagri_latest_flutter_version/presentation/vendor/add/after_select/buyer_input_hook.dart';
import 'package:provider/provider.dart';

class SingleSoldBill extends StatelessWidget {
  // final bool isEditing;
  final SoldNotForm? soldBillSoldOption;
  const SingleSoldBill({
    Key? key,
    // @required this.isEditing,
    @required this.soldBillSoldOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*  var logger = Logger();
    logger.wtf(
        "inside SoldBillSoldOption    " + SoldBillSoldOption.toString()); */
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          // create: (context) => UnitsBloc()..add(LoadUnits()),
          create: (context) => getIt<SingleInvoiceWatcherBloc>()
            ..add(SingleInvoiceWatcherEvent.initialized(
                m.optionOf(soldBillSoldOption))),
          // create: (context) => getIt<SingleInvoiceWatcherBloc>(),
        ),
      ],
      child: MultiBlocListener(
          listeners: [
            BlocListener<AuthBloc, AuthState>(
              listener: (context, state) {
                state.maybeMap(
                  unauthenticated: (_) =>
                      AutoRouter.of(context).replace(SignInPageRoute()),
                  orElse: () {},
                );
                /*   */
              },
            ),
          ],
          child:
              BlocConsumer<SingleInvoiceWatcherBloc, SingleInvoiceWatcherState>(
            listenWhen: (p, c) =>
                p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
            listener: (context, state) {
              state.saveFailureOrSuccessOption!.fold(
                () {},
                (either) {
                  either.fold(
                    (failure) {
                      FlushbarHelper.createError(
                        message: failure.map(
                          insufficientPermission: (_) =>
                              'Insufficient permissions ❌',
                          unableToUpdate: (_) =>
                              "Couldn't update the note. Was it deleted from another device?",
                          unexpected: (_) =>
                              'Unexpected error occured, please contact support.',
                          isEmpty: (_) => "No Invoice created yet!",
                        ),
                      ).show(context);
                    },
                    (_) {
                      /* ExtendedNavigator.of(context).popUntil(
                        (route) => route.settings.name == Routes.newSoldBill,
                      ); */
                    },
                  );
                },
              );
            },
            buildWhen: (p, c) => p.isEditing != c.isEditing,
            builder: (context, state) {
              return Stack(children: <Widget>[
                WillPopScope(
                  onWillPop: () async {
                    // ExtendedNavigator.of(context).pushSoldInvoice();
                    bool? result = await context.router.pop();
                    return result;
                  },
                  child: Scaffold(
                    appBar: AppBar(title: Text('Sold Bill'), actions: <Widget>[
                      /*  Builder(
                        builder: (BuildContext context) {
                          final Sold billWithTotalUpdated = context.select(
                              (SingleInvoiceWatcherBloc bloc) => bloc.state.bill);
                          return IconButton(
                            icon: Icon(Icons.done),
                            onPressed: () {
                              // do something

                              // if (billWithTotalUpdated.failureOption.isNone()) {
                              context
                                  .read<SingleInvoiceWatcherBloc>()
                                  .add(SingleInvoiceWatcherEvent.saved());
                              // }
                            },
                          );
                        },
                      ) */
                      IconButton(
                        icon: Icon(
                          Icons.edit,
                          // color: Colors.white,
                        ),
                        onPressed: () {
                          // do something
                          /* showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    ListTile(
                                      leading: new Icon(Icons.delete),
                                      title: new Text('Delete'),
                                      onTap: () {
                                        // Navigator.pop(context);
                                        /* context
                                            .bloc<AuthBloc>()
                                            .add(const AuthEvent.signedOut()); */
                                      },
                                    ),
                                  ],
                                );
                              }); */
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.menu,
                          // color: Colors.white,
                        ),
                        onPressed: () {
                          // do something
                          showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    ListTile(
                                      leading: new Icon(Icons.delete),
                                      title: new Text('Delete'),
                                      onTap: () {
                                        // Navigator.pop(context);
                                        /* context
                                            .bloc<AuthBloc>()
                                            .add(const AuthEvent.signedOut()); */
                                      },
                                    ),
                                  ],
                                );
                              });
                        },
                      ),
                    ]),
                    body: Column(
                      children: [
                        /* Builder(builder: (BuildContext context) {
                          final bool showError = context.select(
                              (SingleInvoiceWatcherBloc bloc) =>
                                  bloc.state.showErrorMessages);
                          return Container(
                              child: Form(
                            autovalidate: showError,
                            child: BuyerInputHook(),
                          ));
                        }), */
                        //for name of buyer
                        //also has find buyer icon for input box to search for the user
                        Expanded(
                            child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            final quotation = context
                                .read<SingleInvoiceWatcherBloc>()
                                .state
                                .bill!
                                .quotations!
                                .getOrCrash()
                                .get(index);
                            /* logger.wtf("passed" +
                          this
                              .SoldBillSoldOption
                              .quotations
                              .getOrCrash()
                              .indexOf(quotation)
                              .toString()); */
                            return ItemTile(
                              onTap: () {
                                /*  */
                                /*  context
                                    .read<SingleInvoiceWatcherBloc>()
                                    .state
                                    .copyWith(isEditing: false);
                                ExtendedNavigator.of(context)
                                    .pushSelectedQuotationForm(
                                  bill: context
                                      .read<SingleInvoiceWatcherBloc>()
                                      .state
                                      .bill,
                                  quotationIndex: context
                                      .read<SingleInvoiceWatcherBloc>()
                                      .state
                                      .bill
                                      .quotations
                                      .getOrCrash()
                                      .indexOf(quotation),
                                ); */
                              },
                              entry: quotation,
                            );
                          },
                          itemCount: state.bill!.quotations!.length,

                          /*  children: state.bill.quotations.getOrCrash().((entry) {
                            return ItemTile(
                              entry: entry,
                            );
                          }
                          ) */
                        )), //List of items
                        Container(
                            child: Text(context
                                .watch<SingleInvoiceWatcherBloc>()
                                .state
                                .bill!
                                .total!
                                .getOrCrash()
                                .toString()),
                            height: 50.0), //total
                        Row(), //send
                      ],
                    ),
                  ),
                ),
                SavingInProgressOverlay(isSaving: state.isSaving!)
              ]);
            },
          )),
    );
  }
}

class SavingInProgressOverlay extends StatelessWidget {
  final bool? isSaving;

  const SavingInProgressOverlay({
    Key? key,
    @required this.isSaving,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isSaving!,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        color: isSaving! ? Colors.black.withOpacity(0.8) : Colors.transparent,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Visibility(
          visible: isSaving!,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircularProgressIndicator(),
              const SizedBox(height: 8),
              Text(
                'Saving',
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/* class BillFomationScaffold extends StatelessWidget {
  final Sold SoldBillSoldOption;
  const BillFomationScaffold({@required this.SoldBillSoldOption, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return;
  }
} */

class ItemTile extends HookWidget {
  final Quotation? entry;

  final Function()? onTap;
  const ItemTile({@required this.onTap, @required this.entry, Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    // var logger = Logger();

    // logger.wtf(entry);
    // logger.wtf("received" + index.toString());
    return InkWell(
      onTap: onTap,
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                entry!.title!.getOrCrash(),
                style: TextStyle(fontSize: 20),
              ),
              // +
              //         "/ " +
              //         entry.measuremntUnit.getOrCrash()
              Align(
                alignment: Alignment.center,
                child: Text(
                  (entry!.rate!.getOrCrash()).toString(),
                  style: TextStyle(fontSize: 20),
                  // textAlign: TextAlign.center,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  (entry!.quantity!.getOrCrash()).toString(),
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(height: 12),
              Align(
                alignment: Alignment.center,
                child: Text(
                  (entry!.rate!.getOrCrash() * entry!.quantity!.getOrCrash())
                      .toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    /*   ListTile(
      title: Text(entry.title.getOrCrash()),
      subtitle: Text(entry.title.getOrCrash()),
      isThreeLine: true,
    ); */
  }
}
