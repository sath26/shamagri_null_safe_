import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart' as m;
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:is_first_run/is_first_run.dart';
import 'package:shamagri_latest_flutter_version/application/auth/auth_bloc.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/quotation_primitive/quotation_item_presentation_classes.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/selected_individual_edit_for_sold_not_bought/selected_watcher_bloc.dart';
import 'package:shamagri_latest_flutter_version/application/quotation_reso/quotation_bloc.dart';
import 'package:shamagri_latest_flutter_version/application/quotation_reso/quotation_watcher/quotation_watcher_bloc.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/quotation.dart';
import 'package:shamagri_latest_flutter_version/domain/sold/sold.dart';
import 'package:shamagri_latest_flutter_version/injection.dart';
import 'package:shamagri_latest_flutter_version/presentation/getx_first_call_and_first_call/first_call_getx_select.dart';
import 'package:shamagri_latest_flutter_version/presentation/icon/Quotation_add_icon.dart';
import 'package:shamagri_latest_flutter_version/presentation/routes/router.gr.dart';
// import "package:shamagri_latest_flutter_version/presentation/search_filter/filter_conditions_sheet.dart";
// import "package:shamagri_latest_flutter_version/presentation/search_filter/filter_condition_group.dart";
import "package:shamagri_latest_flutter_version/presentation/search_filter/filter_conditions_launcher.dart";
import "package:shamagri_latest_flutter_version/presentation/search_filter/search_input.dart";
import "package:shamagri_latest_flutter_version/presentation/search_filter/item_list_renderer.dart";
// import "package:shamagri_latest_flutter_version/application/journal/journal.dart";
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_list_manager/flutter_bloc_list_manager.dart';
import 'package:shamagri_latest_flutter_version/presentation/vendor/add/select/proceed.dart';
import 'package:shamagri_latest_flutter_version/presentation/vendor/add/select/selected.dart';
import 'package:provider/provider.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

// Base data class that will be supplied by the source bloc.
class SelectBillScreen extends StatefulWidget {
  final Sold? afterSelectSoldOption;

  const SelectBillScreen({Key? key, this.afterSelectSoldOption})
      : super(key: key);
  @override
  _SelectBillScreenState createState() => _SelectBillScreenState();
}

class _SelectBillScreenState extends State<SelectBillScreen> {
  AutoScrollController? controller;
  final scrollDirection = Axis.vertical;
  final FirebaseAnalytics _firebaseAnalytics = FirebaseAnalytics.instance;
  GlobalKey keyQuotationAdd = GlobalKey();
  @override
  void initState() {
    super.initState();
    showTutorialInInitState();
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: scrollDirection);
  }

  void showTutorialInInitState() async {
    // int firstRunSelect = 0;
    // bool ifcSelect = await IsFirstRun.isFirstCall();
    // if (firstRunSelect == 0 && ifcSelect == false) {
    //   ifcSelect = true;
    // }
      if(Get.put(FirstCallGetxSelect()).ifcSelect){

        Future.delayed(Duration.zero, showTutorial);
        Get.find<FirstCallGetxSelect>().firstCall(false);
      }
    // if (ifcSelect) {
    //   firstRunSelect = firstRunSelect + 1;
    // }
  }

  late TutorialCoachMark tutorialCoachMark;
  List<TargetFocus> targets = <TargetFocus>[];

  void showTutorial() {
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
  }

  void initTargets() {
    targets.clear();
    targets.add(
      TargetFocus(
        identify: "keyQuotationAdd",
        keyTarget: keyQuotationAdd,
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
                      "Lets add your first item for quotation!",
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
    return MultiBlocProvider(
      providers: [
        /* BlocProvider<JournalEntryBloc>(
          create: (context) => JournalEntryBloc()..add(LoadJournal()),
        ), */
        BlocProvider(
          // create: (context) => UnitsBloc()..add(LoadUnits()),
          create: (context) => getIt<QuotationWatcherBloc>()
            ..add(const QuotationWatcherEvent.started()),
        ),
        BlocProvider(
          // create: (context) => UnitsBloc()..add(LoadUnits()),
          create: (context) => getIt<SelectedWatcherBloc>()
            ..add(SelectedWatcherEvent.initialized(
                m.optionOf(widget.afterSelectSoldOption))),
        ),
        BlocProvider(
          // create: (context) => UnitsBloc()..add(LoadUnits()),
          create: (context) => getIt<QuotationBloc>()
            ..add(QuotationEvent.initialized(m.optionOf(null))),
        ),
        /* BlocProvider(
          create: (context) => JournalEntryBloc()..add(InitialJournal()),
        ), */
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
          /*  BlocListener<SubjectBloc, SubjectState>(
            listener: (context, state) {
            },
          ), */
        ],
        child: WillPopScope(
          onWillPop: () async {
            bool? result =
                await AutoRouter.of(context).replace(HomeScreenRoute());
            return result!;
          },
          child: Scaffold(
            appBar: AppBar(
              title: Text('My Quotation'), // "select" was misleading
              leading: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    // Write some code to control things, when user press back button in AppBar
                    //Navigator.pop(context, true);
                    AutoRouter.of(context).replace(HomeScreenRoute());
                  }),
              actions: <Widget>[
                IconButton(
                  key: keyQuotationAdd,
                  icon: Icon(
                    QuotationAddIcon.iUe800,
                    size: 30,
                    color: Colors.white,
                  ),
                  onPressed: () async {
                    // do something
                    DateFormat dateFormat = DateFormat("yyyy-MM-dd HH:mm:ss");
                    String now = dateFormat.format(DateTime.now());
                    await _firebaseAnalytics.logEvent(
                      name: 'quotation_create_bill',
                      parameters: {
                        'clicked_time': now,
                      },
                    );
                    AutoRouter.of(context)
                        .push(AddEditQuotationScreenRoute(quotation: null));
                  },
                )
              ],
            ),
            body: ListManager<Quotation, QuotationWatcherState,
                QuotationWatcherBloc>(
              filterProperties: ['quantity'],
              searchProperties: ['title', 'rate', 'quantity'],
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SearchInput(),
                      FilterConditionsLauncher(),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  ChangeNotifierProvider(
                    create: (_) => FormQuotations(),
                    child: Expanded(
                      child: ItemListRenderer(controller!),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[800],
                        /* border: Border.all(
                            color: Colors.black87, // set border color
                            width: 0.5), */ // set border width
                        borderRadius: BorderRadius.all(
                            Radius.circular(2.0)), // set rounded corner radius
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5,
                              color: Colors.grey[800]!,
                              offset: Offset(1, 3))
                        ] // make rounded corner of border
                        ),
                    height: 50.0,
                    child: ChangeNotifierProvider(
                      create: (_) => FormQuotations(),
                      child: SelectedListRenderer(controller!),
                    ),
                  ),
                  Container(
                      height: 50.0,
                      child: Proceed(
                        afterSelectSoldOption: widget.afterSelectSoldOption,
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
/* 
 void main() {
  runApp(
    // Provide our source bloc to the remainder of the tree. In an actual app,
    // this would happen much close to where it was needed.
    BlocProvider<JournalEntryBloc>(
      create: (context) => JournalEntryBloc()..add(_journalEntryEvent.load),
      child: MaterialApp(
        title: 'Flutter Bloc List Manager',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Bloc List Manager'),
          ),
          body: ListManager<JournalEntry, Loaded, JournalEntryBloc>(
            filterProperties: ['author', 'category', 'isPublished'],
            searchProperties: ['content', 'description', 'title'],
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SearchInput(),
                    FilterConditionsLauncher(),
                  ],
                ),
                SizedBox(height: 10.0),
                Expanded(
                  child: ItemListRenderer(),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}  */
