import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart' as m;
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:implicitly_animated_reorderable_list/implicitly_animated_reorderable_list.dart';
import 'package:intl/intl.dart';
import 'package:is_first_run/is_first_run.dart';
import 'package:kt_dart/collection.dart';
import 'package:logger/logger.dart';

import 'package:shamagri_latest_flutter_version/application/auth/auth_bloc.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/quotation_primitive/quotation_item_presentation_classes.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/quotation_primitive/build_context_x.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/selected_individual_edit_for_sold_not_bought/selected_watcher_bloc.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/quotation.dart';
import 'package:shamagri_latest_flutter_version/domain/sold/sold.dart';
import 'package:shamagri_latest_flutter_version/domain/sold_not_form/sold_not_form.dart';
import 'package:shamagri_latest_flutter_version/injection.dart';
import 'package:shamagri_latest_flutter_version/presentation/both/home.dart';
import 'package:shamagri_latest_flutter_version/presentation/both/stateful_wrapper.dart';
import 'package:shamagri_latest_flutter_version/presentation/routes/router.gr.dart';
import 'package:shamagri_latest_flutter_version/presentation/vendor/add/after_select/buyer_input_hook.dart';
import 'package:provider/provider.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

class AfterSelect extends StatelessWidget {
  // final bool isEditing;
  final Sold? afterSelectSoldOption;
  AfterSelect({
    Key? key,
    // @required this.isEditing,
    @required this.afterSelectSoldOption,
  }) : super(key: key);
  final FirebaseAnalytics _firebaseAnalytics = FirebaseAnalytics.instance;
  GlobalKey keyTotalAfterSelect = GlobalKey();
  late TutorialCoachMark tutorialCoachMark;
  List<TargetFocus> targets = <TargetFocus>[];

  void initTargets() {
    targets.clear();
    targets.add(
      TargetFocus(
        identify: "keyTotalAfterSelect",
        keyTarget: keyTotalAfterSelect,
        alignSkip: Alignment.topLeft,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, controller) {
              return Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "No need of calculator anymore!",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    /*  var logger = Logger();
    logger.wtf(
        "inside afterSelectSoldOption    " + afterSelectSoldOption.toString()); */
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          // create: (context) => UnitsBloc()..add(LoadUnits()),
          create: (context) => getIt<SelectedWatcherBloc>()
            ..add(SelectedWatcherEvent.initialized(
                m.optionOf(afterSelectSoldOption))),
          // create: (context) => getIt<SelectedWatcherBloc>(),
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
          child: BlocConsumer<SelectedWatcherBloc, SelectedWatcherState>(
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
                        ),
                      ).show(context);
                    },
                    (_) {
                      /* ExtendedNavigator.of(context).popUntil(
                        (route) => route.settings.name == Routes.newSoldBill,
                      ); */
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen(
                                    selectedPage: 1,
                                  )));
                    },
                  );
                },
              );
            },
            buildWhen: (p, c) => p.isEditing != c.isEditing,
            builder: (context, state) {
              Logger logger = Logger();
              return StatefulWrapper(
                onInit: () async {
                  logger.i("inside after_select onInit");
                  bool ifc = await IsFirstRun.isFirstCall();
                  if (ifc) {
                    Future.delayed(Duration.zero, () {
                      initTargets();
                      tutorialCoachMark = TutorialCoachMark(
                        context,
                        targets: targets,
                        colorShadow: Colors.red,
                        textSkip: "SKIP",
                        paddingFocus: 10,
                        opacityShadow: 0.8,
                        onFinish: () {
                          print("finish");
                        },
                        onClickTarget: (target) {
                          print('onClickTarget: $target');
                        },
                        onClickOverlay: (target) {
                          print('onClickOverlay: $target');
                        },
                        onSkip: () {
                          print("skip");
                        },
                      )..show();
                    });
                  }
                  
                },
                child: Stack(children: <Widget>[
                  WillPopScope(
                    onWillPop: () async {
                      bool? result = await AutoRouter.of(context).root.push(
                          SelectBillScreenRoute(afterSelectSoldOption: null));
                      if (result == null) {
                        result = false;
                      }
                      return result;
                    },
                    child: Scaffold(
                      appBar:
                          AppBar(title: Text('Send Bill'), actions: <Widget>[
                        Builder(
                          builder: (BuildContext context) {
                            final Sold billWithTotalUpdated = context.select(
                                (SelectedWatcherBloc bloc) => bloc.state.bill!);
                            return IconButton(
                              icon: Icon(Icons.done),
                              onPressed: () async {
                                // do something

                                // if (billWithTotalUpdated.failureOption.isNone()) {
                                DateFormat dateFormat =
                                    DateFormat("yyyy-MM-dd HH:mm:ss");
                                String now = dateFormat.format(DateTime.now());
                                await _firebaseAnalytics.logEvent(
                                  name: 'bill_sent',
                                  parameters: {
                                    'clicked_time': now,
                                  },
                                );
                                context
                                    .read<SelectedWatcherBloc>()
                                    .add(SelectedWatcherEvent.saved());
                                // }
                              },
                            );
                          },
                        )
                      ]),
                      body: Column(
                        children: [
                          Builder(builder: (BuildContext context) {
                            final bool showError = context.select(
                                (SelectedWatcherBloc bloc) =>
                                    bloc.state.showErrorMessages!);
                            return Container(
                                child: Form(
                              autovalidateMode: AutovalidateMode.always,
                              child: BuyerInputHook(),
                            ));
                          }),
                          //for name of buyer
                          //also has find buyer icon for input box to search for the user
                          Expanded(
                              child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) {
                              final quotation = context
                                  .read<SelectedWatcherBloc>()
                                  .state
                                  .bill!
                                  .quotations!
                                  .getOrCrash()
                                  .get(index);
                              /* logger.wtf("passed" +
                            this
                                .afterSelectSoldOption
                                .quotations
                                .getOrCrash()
                                .indexOf(quotation)
                                .toString()); */
                              return ItemTile(
                                onTap: () {
                                  /*  */
                                  context
                                      .read<SelectedWatcherBloc>()
                                      .state
                                      .copyWith(isEditing: false);
                                  AutoRouter.of(context)
                                      .push(SelectedQuotationFormRoute(
                                    bill: context
                                        .read<SelectedWatcherBloc>()
                                        .state
                                        .bill,
                                    quotationIndex: context
                                        .read<SelectedWatcherBloc>()
                                        .state
                                        .bill!
                                        .quotations!
                                        .getOrCrash()
                                        .indexOf(quotation),
                                  ));
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
                              child: Text(
                                  context
                                      .watch<SelectedWatcherBloc>()
                                      .state
                                      .bill!
                                      .total!
                                      .getOrCrash()
                                      .toString(),
                                  key: keyTotalAfterSelect),
                              height: 50.0), //total
                          Row(), //send
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
  final Sold afterSelectSoldOption;
  const BillFomationScaffold({@required this.afterSelectSoldOption, Key key})
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
              /* 
              +
                      "/ " +
                      entry.measuremntUnit.getOrCrash()
               */
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
