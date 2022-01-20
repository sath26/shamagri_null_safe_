import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:logger/logger.dart';
import 'package:shamagri_latest_flutter_version/application/auth/auth_bloc.dart';
// import 'package:shamagri_latest_flutter_version/application/form_bloc/quotation.dart';
import 'package:shamagri_latest_flutter_version/application/quotation_reso/quotation_bloc.dart';
import 'package:shamagri_latest_flutter_version/application/unit_reso.dart/bloc/unit_watcher_bloc.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/quotation.dart';
// import 'package:quotations_repository/quotations_repository.dart';
// import 'package:shamagri_latest_flutter_version/infrastructure/quotation_easy/entities/entities.dart';
// import 'package:shamagri_latest_flutter_version/infrastructure/quotation_easy/model/quotation.dart';
import 'package:shamagri_latest_flutter_version/injection.dart';
// import 'package:shamagri_latest_flutter_version/presentation/icon/Quotation_add_icon.dart';
// import 'package:shamagri_latest_flutter_version/presentation/icon/cateory_and_unit_icons.dart';
import 'package:shamagri_latest_flutter_version/presentation/routes/router.gr.dart';
import 'package:shamagri_latest_flutter_version/presentation/vendor/add/quotation_add_edit/getx_controllers/title_getx.dart';
import 'package:shamagri_latest_flutter_version/presentation/vendor/add/quotation_add_edit/quotation_input_hook/quantity_input_hook.dart';
import 'package:shamagri_latest_flutter_version/presentation/vendor/add/quotation_add_edit/quotation_input_hook/rate_input_hook.dart';
import 'package:shamagri_latest_flutter_version/presentation/vendor/add/quotation_add_edit/quotation_input_hook/title_input_hook.dart';
import 'package:shamagri_latest_flutter_version/presentation/vendor/add/quotation_add_edit/quotation_input_hook/unit_input_hook.dart';

class AddEditQuotationScreen extends StatelessWidget {
  // static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final bool? isEditing;
  final Quotation? quotation;
  const AddEditQuotationScreen({Key? key, this.isEditing, this.quotation})
      : super(key: key);

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
    // final formBloc = BlocProvider.of<AddEditQuotationFormBloc>(context);
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            // create: (context) => UnitsBloc()..add(LoadUnits()),
            create: (context) => getIt<QuotationBloc>()
              ..add(QuotationEvent.initialized(optionOf(quotation))),
          ),
          BlocProvider(
            // create: (context) => UnitsBloc()..add(LoadUnits()),
            create: (context) =>
                getIt<UnitWatcherBloc>()..add(const UnitWatcherEvent.started()),
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
          child: BlocConsumer<QuotationBloc, QuotationState>(
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
                          isEmpty: (_) => "Add items you sell!",
                        ),
                      ).show(context);
                    },
                    (_) {
                      Get.put(TitleQuotationController()).remove();
                      AutoRouter.of(context).popUntil(
                        (route) =>
                            route.settings.name == "SelectBillScreenRoute",
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
                  QuotationFormPageScaffold(),
                  SavingInProgressOverlay(isSaving: state.isSaving!)
                ],
              );
            },
          ),
        ));
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

class QuotationFormPageScaffold extends StatelessWidget {
  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final Logger logger = new Logger();
  static const IconData ad_units_rounded =
      IconData(0xf524, fontFamily: 'MaterialIcons');
  QuotationFormPageScaffold({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          Get.put(TitleQuotationController()).remove();
          bool? result =
              await AutoRouter.of(context).replace(SelectBillScreenRoute());
          return result!;
        },
        child: Scaffold(
          appBar: AppBar(
            title: BlocBuilder<QuotationBloc, QuotationState>(
              buildWhen: (p, c) => p.isEditing != c.isEditing,
              builder: (context, state) {
                return Text(state.isEditing!
                    ? 'Edit a quotation'
                    : 'Create a quotation');
              },
            ),
            actions: <Widget>[
              /*  IconButton(
                icon: Icon(Icons.ad_units),
                onPressed: () {
                  // do something
                  ExtendedNavigator.of(context)
                      .replace(Routes.listEditDeleteUnit);
                },
              ), */
              /*   IconButton(
                icon: Image.asset(
                  "images/unit.png",
                ),
                onPressed: () {
                  // do something
                  ExtendedNavigator.of(context)
                      .replace(Routes.listEditDeleteUnit);
                },
              ) */
              IconButton(
                icon: Icon(Icons.done),
                onPressed: () {
                  // do something
                  final FormState form = _formKey.currentState!;
                  if (form.validate()) {
                    logger.i('Form is valid');
                  } else {
                    logger.i('Form is invalid');
                  }
                  context
                      .read<QuotationBloc>()
                      .add(const QuotationEvent.saved());
                  /* ExtendedNavigator.of(context)
                      .replace(Routes.selectBillScreen); */
                },
              )
            ],
          ),
          body: BlocBuilder<QuotationBloc, QuotationState>(
              buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
              builder: (context, state) {
                return Form(
                  key: _formKey,
                  autovalidateMode: state.showErrorMessages,
                  child: SingleChildScrollView(
                    physics: ClampingScrollPhysics(),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: <Widget>[
                          /* TextFieldBlocBuilder(
                              autofocus: !isEditing,
                              textFieldBloc: formBloc.title,
                              keyboardType: TextInputType.multiline,
                              maxLines: 10,
                              decoration: InputDecoration(
                                labelText: 'Title of good',
                                // prefixIcon: Icon(Icons.sentiment_very_dissatisfied),
                              ),
                            ), */
                          TitleInputHook(),

                          /* TextFieldBlocBuilder(
                              textFieldBloc: formBloc.rate,
                              keyboardType: TextInputType.number,
                              maxLines: null,
                              decoration: InputDecoration(
                                labelText: 'Rate/unit',
                                // prefixIcon: Icon(Icons.sentiment_very_dissatisfied),
                              ),
                            ), */
                          RateInputHook(),
                          // QuantityInputHook(),
                          /*  DropdownFieldBlocBuilder<String>(
                              selectFieldBloc: formBloc.unit,
                              decoration: InputDecoration(
                                labelText: 'Unit',
                                prefixIcon: Image.asset(
                                  "images/unit.png",
                                ),
                              ),
                              itemBuilder: (context, value) => value,
                            ), */
                          // UnitDropDownHook(),

                          /* TextFieldBlocBuilder(
                              textFieldBloc: formBloc.quantity,
                              keyboardType: TextInputType.number,
                              maxLines: null,
                              decoration: InputDecoration(
                                labelText: 'Quantity',
                                // prefixIcon: Icon(Icons.sentiment_very_dissatisfied),
                              ),
                            ), */
                        ],
                        /*       ListView(
                            children: [
                              TextFormField(
                                initialValue:
                                    isEditing ? widget.quotation.title : '',
                                autofocus: !isEditing,
                                style: textTheme.headline5,
                                decoration: InputDecoration(
                                  hintText: 'Name of good',
                                ),
                                validator: (val) {
                                  return val.trim().isEmpty
                                      ? 'Please enter some text'
                                      : null;
                                },
                                onSaved: (value) => _task = value,
                              ),
                              TextFormField(
                                initialValue:
                                    isEditing ? widget.quotation.rate : '',
                                maxLines: 10,
                                style: textTheme.subtitle1,
                                decoration: InputDecoration(
                                  hintText: 'Additional Notes...',
                                ),
                                onSaved: (value) => _note = value,
                              )
                            ],
                          ), */
                      ),
                    ),
                    /*  floatingActionButton: FloatingActionButton(
                        tooltip: isEditing ? 'Save changes' : 'Add quotation',
                        child: Icon(isEditing ? Icons.check : Icons.add),
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            _formKey.currentState.save();
                            widget.onSave(_task, _note);
                            Navigator.pop(context);
                          }
                        },
                      ), */
                  ),
                );
              }),
        ));
  }
}
