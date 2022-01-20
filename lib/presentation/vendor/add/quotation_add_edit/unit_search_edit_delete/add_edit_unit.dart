import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shamagri_latest_flutter_version/application/auth/auth_bloc.dart';
// import 'package:shamagri_latest_flutter_version/application/form_bloc/unit.dart';
import 'package:shamagri_latest_flutter_version/application/unit_reso.dart/unit_bloc.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';

// import 'package:shamagri_latest_flutter_version/application/form_bloc/Measuremnt.dart';
import 'package:shamagri_latest_flutter_version/domain/unit_reso/measuremnt.dart';
import 'package:shamagri_latest_flutter_version/domain/unit_reso/value_objects.dart';
// import 'package:shamagri_latest_flutter_version/domain/unit_reso/measuremnt.dart';
// import 'package:Measuremnts_repository/Measuremnts_repository.dart';
// import 'package:shamagri_latest_flutter_version/infrastructure/Measuremnt_easy/entities/entities.dart';
// import 'package:shamagri_latest_flutter_version/infrastructure/quotation_easy/model/quotation.dart';
import 'package:shamagri_latest_flutter_version/injection.dart';
// import 'package:shamagri_latest_flutter_version/presentation/icon/Quotation_add_icon.dart';
// import 'package:shamagri_latest_flutter_version/presentation/icon/cateory_and_unit_icons.dart';
import 'package:shamagri_latest_flutter_version/presentation/routes/router.gr.dart';
import 'package:shamagri_latest_flutter_version/presentation/vendor/add/quotation_add_edit/unit_search_edit_delete/title_input_hook.dart';

/* typedef OnSaveCallback = Function(String task, String note);

class AddEditMeasuremntScreen extends StatefulWidget {
  final OnSaveCallback onSave;

  AddEditMeasuremntScreen({
    Key key,
    @required this.onSave,
    @required this.isEditing,
    this.measuremnt,
  }) : super(key: key);

  @override
  _AddEditScreenState createState() => _AddEditScreenState();
} */

class AddEditMeasurementScreen extends StatelessWidget {
  final bool? isEditing;
  // static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final Measuremnt? measuremnt;

  const AddEditMeasurementScreen({Key? key, this.measuremnt, this.isEditing})
      : super(key: key);

  // bool get isEditing => widget.isEditing;
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    final textTheme = Theme.of(context).textTheme;

    return MultiBlocProvider(
      providers: [
        /* BlocProvider(
          create: (context) => AddEditMeasuremntFormBloc(),
        ), */
        BlocProvider(
          create: (context) => getIt<UnitBloc>()
            ..add(UnitEvent.initialized(optionOf(measuremnt))),
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
            },
          ),
        ],
        child: BlocConsumer<UnitBloc, UnitState>(
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
                    AutoRouter.of(context).popUntil(
                      (route) =>
                          route.settings.name == "ListEditDeleteUnitRoute",
                    );
                  },
                );
              },
            );
          },
          buildWhen: (p, c) => p.isSaving != c.isSaving,
          builder: (context, state) {
            return Stack(
              children: <Widget>[
                const UnitFormPageScaffold(),
                SavingInProgressOverlay(isSaving: state.isSaving!)
              ],
            );
          },
        ),
      ),
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

class UnitFormPageScaffold extends StatelessWidget {
  const UnitFormPageScaffold({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // final formBloc = BlocProvider.of<AddEditMeasuremntFormBloc>(context);

    return WillPopScope(
      onWillPop: () async {
        bool? result =
            await AutoRouter.of(context).replace(ListEditDeleteUnitRoute());
        return result!;
      },
      child: Scaffold(
          appBar: AppBar(
            title: BlocBuilder<UnitBloc, UnitState>(
              buildWhen: (p, c) => p.isEditing != c.isEditing,
              builder: (context, state) {
                return Text(state.isEditing! ? 'Edit a unit' : 'Create a unit');
              },
            ),
            leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () {
                  AutoRouter.of(context).replace(ListEditDeleteUnitRoute());
                }),
            actions: <Widget>[
              IconButton(
                icon: SvgPicture.asset("images/category-icon.svg",
                    color: Colors.white),
                onPressed: () {
                  // do something
                },
              ),
              IconButton(
                icon: Icon(Icons.done),
                onPressed: () {
                  // do something
                  context.watch<UnitBloc>()..add(const UnitEvent.saved());
                },
              )
            ],
          ),
          // body: BlocBuilder<UnitBloc, UnitState>(
          body: BlocBuilder<UnitBloc, UnitState>(
            buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
            builder: (context, state) {
              return SingleChildScrollView(
                physics: ClampingScrollPhysics(),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      /* TextFieldBlocBuilder(
                      // autofocus: !isEditing,

                      // textFieldBloc: state.unit.title.getOrCrash(),
                      textFieldBloc: formBloc.title,
                      keyboardType: TextInputType.multiline,
                      maxLines: 10,
                      decoration: InputDecoration(
                        labelText: 'Title of unit',
                        // prefixIcon: Icon(Icons.sentiment_very_dissatisfied),
                      ),
                    ), */
                      TitleInputHook()
                    ],
                  ),
                ),
              );
            },
          )),
    );
  }
}
