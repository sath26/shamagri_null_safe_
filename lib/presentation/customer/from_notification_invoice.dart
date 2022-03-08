import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart' as m;
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_intro/flutter_intro.dart';
import 'package:implicitly_animated_reorderable_list/implicitly_animated_reorderable_list.dart';
import 'package:kt_dart/collection.dart';
import 'package:logger/logger.dart';

import 'package:shamagri_latest_flutter_version/application/auth/auth_bloc.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/from_noftification/from_notification_bloc.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/quotation_primitive/quotation_item_presentation_classes.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/quotation_primitive/build_context_x.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/selected_individual_edit_for_sold_not_bought/selected_watcher_bloc.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/single_bought_invoice_from_list/single_bought_invoice_watcher_bloc.dart';
// import 'package:shamagri_latest_flutter_version/application/bought_sold/single_invoice_from_list/single_invoice_watcher_bloc.dart';
import 'package:shamagri_latest_flutter_version/domain/not_form_bought/not_form_bought.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/quotation.dart';
import 'package:shamagri_latest_flutter_version/domain/sold/sold.dart';
import 'package:shamagri_latest_flutter_version/domain/sold_not_form/sold_not_form.dart';
import 'package:shamagri_latest_flutter_version/injection.dart';
import 'package:shamagri_latest_flutter_version/presentation/both/stateful_wrapper.dart';
import 'package:shamagri_latest_flutter_version/presentation/routes/router.gr.dart';
import 'package:shamagri_latest_flutter_version/presentation/vendor/add/after_select/buyer_input_hook.dart';
import 'package:provider/provider.dart';

class FromNotificationBoughtBill extends StatelessWidget {
  // final bool isEditing;
  // final BoughtNotForm boughtBillBoughtOption;
  final String? soldAndboughtId;
  final String? soldInvoiceAndBoughtInvoiceId;
  late Intro intro;

  FromNotificationBoughtBill({
    Key? key,
    // @required this.isEditing,
    // @required this.boughtBillBoughtOption,
    @required this.soldAndboughtId,
    @required this.soldInvoiceAndBoughtInvoiceId,
  }) : super(key: key) {
    intro = Intro(
      stepCount: 2,

      maskClosable: true,

      /// implement widgetBuilder function
      widgetBuilder: customThemeWidgetBuilder,
    );
  }
  Widget customThemeWidgetBuilder(StepWidgetParams stepWidgetParams) {
    List<String> texts = [
      '',
      'This is the total you are looking for!',
      // 'My usage is also very simple, you can quickly learn and use it through example and api documentation.',
      // 'In order to quickly implement the guidance, I also provide a set of out-of-the-box themes, I wish you all a happy use, goodbye!',
    ];
    return Padding(
      padding: EdgeInsets.all(
        32,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            '${texts[stepWidgetParams.currentStepIndex]}【${stepWidgetParams.currentStepIndex + 1} / ${stepWidgetParams.stepCount}】',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: stepWidgetParams.onPrev,
                child: Text(
                  'Prev',
                ),
              ),
              SizedBox(
                width: 16,
              ),
              ElevatedButton(
                onPressed: stepWidgetParams.onNext,
                child: Text(
                  'Next',
                ),
              ),
              SizedBox(
                width: 16,
              ),
              ElevatedButton(
                onPressed: stepWidgetParams.onFinish,
                child: Text(
                  'Finish',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var logger = Logger();
    /*  
    logger.wtf(
        "inside SoldBillSoldOption    " + SoldBillSoldOption.toString()); */
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          // create: (context) => UnitsBloc()..add(LoadUnits()),
          create: (context) => getIt<FromNotificationBloc>()
            ..add(FromNotificationEvent.from_notification(
                this.soldAndboughtId!, this.soldInvoiceAndBoughtInvoiceId!)),
          // create: (context) => getIt<SingleInvoiceWatcherBloc>(),
        ),
      ],
      child: MultiBlocListener(
          listeners: [
            BlocListener<AuthBloc, AuthState>(
              listener: (context, state) {
                state.maybeMap(
                  unauthenticated: (_) =>
                      // ExtendedNavigator.of(context).replace(Routes.signInPage),
                      AutoRouter.of(context).replace(SignInPageRoute()),
                  orElse: () {},
                );
                /*   */
              },
            ),
          ],
          child: BlocConsumer<FromNotificationBloc, FromNotificationState>(
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
                          isEmpty: (_) => "This invoice has been removed.",
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
              final quotations = context
                  .watch<FromNotificationBloc>()
                  .state
                  .bill!
                  .quotations!
                  .getOrCrash();
              /* logger.wtf(" right below builder " +
                  context
                      .watch<FromNotificationBloc>()
                      .state
                      .bill!
                      .quotations!
                      .getOrCrash()
                      .toString()); */
              return StatefulWrapper(
                onInit: () {
                  intro.start(context);
                },
                child: Stack(children: <Widget>[
                  WillPopScope(
                    onWillPop: () async {
                      // ExtendedNavigator.of(context).pushSoldInvoice();
                      bool? result = await AutoRouter.of(context).push(
                          BoughtInvoiceRoute(boughtId: this.soldAndboughtId));
                      if (result == null) {
                        result = false;
                      }
                      return result;
                    },
                    // logger.wtf('it has arrived here'),
                    child: Scaffold(
                      appBar: AppBar(
                          title: Text('From Notification Bill'),
                          actions: <Widget>[
                            IconButton(
                              key: intro.keys[0],
                              icon: Icon(
                                Icons.approval,
                                // approval_rounded
                              ),
                              color: context
                                      .read<FromNotificationBloc>()
                                      .state
                                      .bill!
                                      .isApproved!
                                      .getOrCrash()
                                  ? Colors.green[600]
                                  : Colors.yellow[600],
                              onPressed: () {
                                bool isApproved;
                                // do something
                                if (context
                                    .read<FromNotificationBloc>()
                                    .state
                                    .bill!
                                    .isApproved!
                                    .getOrCrash()) {
                                  isApproved = false;
                                  BlocProvider.of<FromNotificationBloc>(context)
                                      .add(FromNotificationEvent
                                          .isApprovedChanged(isApproved));
                                  BlocProvider.of<FromNotificationBloc>(context)
                                      .add(FromNotificationEvent.updated());
                                } else {
                                  isApproved = true;

                                  BlocProvider.of<FromNotificationBloc>(context)
                                      .add(FromNotificationEvent
                                          .isApprovedChanged(isApproved));
                                  BlocProvider.of<FromNotificationBloc>(context)
                                      .add(FromNotificationEvent.updated());
                                }
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
                          // if(mounted){}
                          // Row(children: [Text("hey there")]),
                          Expanded(
                              child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              final quotation = quotations[index];
                              logger.wtf(
                                  "quotation_notif: " + quotation.toString());
                              /* logger.wtf("passed" +
                            this
                                .SoldBillSoldOption
                                .quotations
                                .getOrCrash()
                                .indexOf(quotation)
                                .toString()); */
                              return ItemTile(
                                entry: quotation,
                              );
                            },
                            itemCount: quotations.size,

                            /*  children: state.bill.quotations.getOrCrash().((entry) {
                              return ItemTile(
                                entry: entry,
                              );
                            }
                            ) */
                          )), //List of items
                          Container(
                              key: intro.keys[1],
                              child: Text(context
                                  .watch<FromNotificationBloc>()
                                  .state
                                  .bill!
                                  .total!
                                  .getOrCrash()
                                  .toString()),
                              height: 50.0), //total
                          // Row(), //send
                        ],
                      ),
                    ),
                  ),
                  SavingInProgressOverlay(isSaving: state.isSaving!)
                ]),
              );
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
  final Quotation entry;

  // final Function() onTap;
  const ItemTile({required this.entry, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var logger = Logger();

    logger.wtf("entry received " + entry.toString());
    // logger.wtf("received" + index.toString());

    return InkWell(
      // onTap: onTap,
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                entry.title!.getOrCrash(),
                style: TextStyle(fontSize: 20),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  (entry.rate!.getOrCrash()).toString(),
                  style: TextStyle(fontSize: 20),
                  // textAlign: TextAlign.center,
                ),
              ),
              /* +
                      "/ " +
                      entry.measuremntUnit.getOrCrash() */
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  (entry.quantity!.getOrCrash()).toString(),
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(height: 12),
              Align(
                alignment: Alignment.center,
                child: Text(
                  (entry.rate!.getOrCrash() * entry.quantity!.getOrCrash())
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
