import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_list_manager/flutter_bloc_list_manager.dart';
import 'package:shamagri_latest_flutter_version/application/auth/auth_bloc.dart';
// import 'package:shamagri_latest_flutter_version/application/journal/journal.dart';
import 'package:shamagri_latest_flutter_version/application/unit_reso.dart/bloc/unit_watcher_bloc.dart';
import 'package:shamagri_latest_flutter_version/application/unit_reso.dart/unit_actor/unit_actor_bloc.dart';
import 'package:shamagri_latest_flutter_version/application/unit_reso.dart/unit_bloc.dart';
import 'package:shamagri_latest_flutter_version/domain/unit_reso/measuremnt.dart';
// import 'package:shamagri_latest_flutter_version/infrastructure/unit_easy/model/unit.dart';
import 'package:shamagri_latest_flutter_version/infrastructure/unit_reso/unit_dtos.dart';
import 'package:shamagri_latest_flutter_version/injection.dart';
import 'package:shamagri_latest_flutter_version/presentation/routes/router.gr.dart';
import 'package:shamagri_latest_flutter_version/presentation/vendor/add/quotation_add_edit/unit_search_edit_delete/item_list_renderer.dart';
import 'package:shamagri_latest_flutter_version/presentation/vendor/add/quotation_add_edit/unit_search_edit_delete/search_input.dart';

class ListEditDeleteUnit extends StatelessWidget {
  const ListEditDeleteUnit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          // create: (context) => UnitsBloc()..add(LoadUnits()),
          create: (context) =>
              getIt<UnitWatcherBloc>()..add(const UnitWatcherEvent.started()),
        ),
        BlocProvider(
          // create: (context) => UnitsBloc()..add(LoadUnits()),
          create: (context) => getIt<UnitActorBloc>(),
        ),
        BlocProvider(
          // create: (context) => UnitsBloc()..add(LoadUnits()),
          create: (context) =>
              getIt<UnitBloc>()..add(UnitEvent.initialized(optionOf(null))),
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
          BlocListener<UnitActorBloc, UnitActorState>(
            listener: (context, state) {
              state.maybeMap(
                deleteFailure: (state) {
                  FlushbarHelper.createError(
                    duration: const Duration(seconds: 5),
                    message: state.unitFailure.map(
                      unexpected: (_) =>
                          'Unexpected error occured while deleting, please contact support.',
                      insufficientPermission: (_) =>
                          'Insufficient permissions ❌',
                      unableToUpdate: (_) => 'Impossible error',
                    ),
                  ).show(context);
                },
                orElse: () {},
              );
            },
          ),
        ],
        child: WillPopScope(
          onWillPop: () async {
            bool? result = await AutoRouter.of(context)
                .push(AddEditQuotationScreenRoute(quotation: null));
            return result!;
          },
          child: Scaffold(
            appBar: AppBar(
                title: Text('Units'),
                leading: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      // Write some code to control things, when user press back button in AppBar
                      //Navigator.pop(context, true);
                      AutoRouter.of(context)
                          .push(AddEditQuotationScreenRoute(quotation: null));
                    }),
                actions: <Widget>[
                  IconButton(
                      onPressed: () {
                        AutoRouter.of(context).push(
                            AddEditMeasurementScreenRoute(measuremnt: null));
                      },
                      icon: Icon(Icons.add))
                ]),
            // body: ListManager<Unit, UnitsLoaded, UnitsBloc>(
            body: ListManager<Measuremnt, UnitWatcherState, UnitWatcherBloc>(
              filterProperties: ['title', 'isEditing', 'id'],
              // searchProperties: ['unit'],
              searchProperties: ['title', 'isEditing'],
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SearchInput(),
                      // FilterConditionsLauncher(),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Expanded(
                    child: ItemListRenderer(),
                  ),
                  /* Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        /* border: Border.all(
                            color: Colors.black87, // set border color
                            width: 0.5), */ // set border width
                        borderRadius: BorderRadius.all(
                            Radius.circular(2.0)), // set rounded corner radius
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              color: Colors.grey[200],
                              offset: Offset(1, 3))
                        ] // make rounded corner of border
                        ),
                    height: 50.0,
                    child: SelectedListRenderer(controller),
                  ),
                  Container(height: 50.0, child: Proceed()) */
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
