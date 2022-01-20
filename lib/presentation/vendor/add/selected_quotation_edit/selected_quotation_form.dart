import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart' as m;
import 'package:dartz/dartz.dart';
import 'package:another_flushbar/flushbar.dart';
// import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_form_bloc/flutter_form_bloc.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:logger/logger.dart';
import 'package:shamagri_latest_flutter_version/application/auth/auth_bloc.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/selected_individual_edit_for_sold_not_bought/selected_watcher_bloc.dart';
// import 'package:shamagri_latest_flutter_version/application/form_bloc/quotation.dart';
// import 'package:shamagri_latest_flutter_version/application/quotation_reso/quotation_bloc.dart';
import 'package:shamagri_latest_flutter_version/application/unit_reso.dart/bloc/unit_watcher_bloc.dart';
// import 'package:shamagri_latest_flutter_version/domain/quotation_reso/quotation.dart';
import 'package:shamagri_latest_flutter_version/domain/sold/sold.dart';
// import 'package:quotations_repository/quotations_repository.dart';
// import 'package:shamagri_latest_flutter_version/infrastructure/quotation_easy/entities/entities.dart';
// import 'package:shamagri_latest_flutter_version/infrastructure/quotation_easy/model/quotation.dart';
import 'package:shamagri_latest_flutter_version/injection.dart';
// import 'package:shamagri_latest_flutter_version/presentation/icon/Quotation_add_icon.dart';
// import 'package:shamagri_latest_flutter_version/presentation/icon/cateory_and_unit_icons.dart';
import 'package:shamagri_latest_flutter_version/presentation/routes/router.gr.dart';
import 'package:shamagri_latest_flutter_version/presentation/vendor/add/selected_quotation_edit/selected_quotation_offline_hook/quantity_offline_hook.dart';
import 'package:shamagri_latest_flutter_version/presentation/vendor/add/selected_quotation_edit/selected_quotation_offline_hook/rate_offline_hook.dart';
import 'package:shamagri_latest_flutter_version/presentation/vendor/add/selected_quotation_edit/selected_quotation_offline_hook/title_offline_hook.dart';
import 'package:shamagri_latest_flutter_version/presentation/vendor/add/selected_quotation_edit/selected_quotation_offline_hook/unit_offline_hook.dart';

class SelectedQuotationForm extends StatelessWidget {
  // static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final bool? isEditing;
  final Sold? bill;
  final int? quotationIndex;
  const SelectedQuotationForm(
      {Key? key, this.isEditing, this.bill, this.quotationIndex})
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
            create: (context) => getIt<SelectedWatcherBloc>()
              ..add(SelectedWatcherEvent.initialized(m.optionOf(this.bill))),
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
          child: BlocConsumer<SelectedWatcherBloc, SelectedWatcherState>(
            listenWhen: (p, c) => p.navigationWork != c.navigationWork,
            listener: (context, state) {
              if (state.navigationWork!) {
                /*  var logger = new Logger();
                logger.v(" context   " +
                    context.read<SelectedWatcherBloc>().state.bill.toString());
                logger.v(" only state   " +
                    context.read<SelectedWatcherBloc>().state.bill.toString());*/

                AutoRouter.of(context).push(AfterSelectRoute(
                    afterSelectSoldOption:
                        context.read<SelectedWatcherBloc>().state.bill));
              } else {
                Flushbar(
                    message: "Either rate or quantity is empty or zero",
                    duration: Duration(seconds: 3));
              }
            },
            buildWhen: (p, c) => p.isEditing != c.isEditing,
            builder: (context, state) {
              /* var logger = Logger();
              logger
                  .wtf("inside selected_quotation_form    " + state.toString()); */
              return Builder(
                builder: (BuildContext context) {
                  final bool showError = context.select(
                      (SelectedWatcherBloc bloc) =>
                          bloc.state.showErrorMessages!);

                  final Sold billWithTotalUpdated = context
                      .select((SelectedWatcherBloc bloc) => bloc.state.bill!);

                  return Stack(
                    children: <Widget>[
                      WillPopScope(
                        onWillPop: () async {
                          bool? result = await AutoRouter.of(context).push(
                              AfterSelectRoute(
                                  afterSelectSoldOption: state.bill));
                          return result!;
                        },
                        child: Scaffold(
                          appBar: AppBar(
                            title: Text('Offline edit'),
                            actions: <Widget>[
                              /*  IconButton(
                icon: SvgPicture.asset("images/category-icon.svg",
                    color: Colors.white),
                onPressed: () {
                  // do something
                },
              ),
              IconButton(
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

                                  if (billWithTotalUpdated.quotations!
                                      .getOrCrash()
                                      .get(this.quotationIndex!)
                                      .failureOption
                                      .isNone()) {
                                    /* context.read<SelectedWatcherBloc>().add(
                                        SelectedWatcherEvent
                                            .calculateTotalAfterEdit(
                                                billWithTotalUpdated.quotations
                                                    .getOrCrash())); */
                                    context.read<SelectedWatcherBloc>().add(
                                            SelectedWatcherEvent
                                                .individualQuotationEdited(
                                          billWithTotalUpdated.quotations,
                                          this.quotationIndex,
                                        ));
/* 
                                    ExtendedNavigator.of(context)
                                        .pushAfterSelect(
                                            afterSelectSoldOption: state.bill); */
                                  }
                                },
                              )
                            ],
                          ),
                          body: Form(
                            autovalidateMode: showError,
                            child: SingleChildScrollView(
                              physics: ClampingScrollPhysics(),
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Column(
                                  children: <Widget>[
                                    /* TextFieldBlocBuilder(
                              autofocus: !isEditing,
                              textFieldBloc: formBloc.title,
                              keyboardType: TextOfflineType.multiline,
                              maxLines: 10,
                              decoration: OfflineDecoration(
                                labelText: 'Title of good',
                                // prefixIcon: Icon(Icons.sentiment_very_dissatisfied),
                              ),
                            ), */
                                    TitleOfflineHook(
                                        quotationIndex: this.quotationIndex,
                                        bill: this.bill),

                                    /* TextFieldBlocBuilder(
                              textFieldBloc: formBloc.rate,
                              keyboardType: TextOfflineType.number,
                              maxLines: null,
                              decoration: OfflineDecoration(
                                labelText: 'Rate/unit',
                                // prefixIcon: Icon(Icons.sentiment_very_dissatisfied),
                              ),
                            ), */
                                    RateOfflineHook(
                                        quotationIndex: this.quotationIndex,
                                        bill: state.bill),
                                    QuantityOfflineHook(
                                        quotationIndex: this.quotationIndex,
                                        bill: state.bill),
                                    /*  DropdownFieldBlocBuilder<String>(
                              selectFieldBloc: formBloc.unit,
                              decoration: OfflineDecoration(
                                labelText: 'Unit',
                                prefixIcon: Image.asset(
                                  "images/unit.png",
                                ),
                              ),
                              itemBuilder: (context, value) => value,
                            ), */
                                    UnitDropDownOfflineHook(
                                        this.quotationIndex!),

                                    /* TextFieldBlocBuilder(
                              textFieldBloc: formBloc.quantity,
                              keyboardType: TextOfflineType.number,
                              maxLines: null,
                              decoration: OfflineDecoration(
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
                                decoration: OfflineDecoration(
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
                                decoration: OfflineDecoration(
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
                          ),
                        ),
                      ),
                      SavingInProgressOverlay(isSaving: state.isSaving!)
                    ],
                  );
                },
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
