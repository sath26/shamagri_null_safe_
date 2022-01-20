import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_bloc_list_manager/flutter_bloc_list_manager.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shamagri_latest_flutter_version/application/quotation_reso/quotation_bloc.dart';
import 'package:shamagri_latest_flutter_version/application/unit_reso.dart/bloc/unit_watcher_bloc.dart';
// import 'package:shamagri_latest_flutter_version/application/unit_reso.dart/unit_bloc.dart';
// import 'package:shamagri_latest_flutter_version/domain/quotation_reso/value_objects.dart';
// import 'package:shamagri_latest_flutter_version/domain/unit_reso/measuremnt.dart';
// import 'package:shamagri_latest_flutter_version/domain/unit_reso/value_objects.dart';
// import 'package:shamagri_latest_flutter_version/injection.dart';
// import 'package:shamagri_latest_flutter_version/presentation/routes/router.gr.dart';
// import 'package:shamagri_latest_flutter_version/presentation/vendor/add/quotation_add_edit/quotation_input_hook/unit_select/item_list_renderer.dart';
// import 'package:shamagri_latest_flutter_version/presentation/vendor/add/quotation_add_edit/unit_search_edit_delete/search_input.dart';
// import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
// import 'package:notes_firebase_ddd_course/application/notes/note_form/note_form_bloc.dart';
// import 'package:notes_firebase_ddd_course/domain/notes/value_objects.dart';

class UnitDropDownHook extends HookWidget {
  const UnitDropDownHook({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final textEditingController = useTextEditingController();
    String? text;
    return BlocListener<QuotationBloc, QuotationState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        // log(state.quotation.measuremntUnit.getOrCrash());
        text = state.quotation!.measuremntUnit!.getOrCrash();
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: BlocBuilder<UnitWatcherBloc, UnitWatcherState>(
          builder: (context, state) {
            return state.map(
                initial: (_) => Container(),
                loadInProgress: (_) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                loadSuccess: (state) {
                  return DropdownSearch<String>(
                      mode: Mode.DIALOG,
                      // showSelectedItem: true,
                      showSearchBox: true,
                      /* onFind: , */
                      items: state.units!.map((e) {
                        return e.title!.getOrCrash().toString();
                      }).toList(),
                      label: "Search Unit",
                      hint: "country in menu mode",
                      // popupItemDisabled: (String s) => s.startsWith('I'),
                      onChanged: (value) => context
                          .read<QuotationBloc>()
                          .add(QuotationEvent.unitChanged(value)),
                      validator: (_) => context
                          .read<QuotationBloc>()
                          .state
                          .quotation!
                          .measuremntUnit!
                          .value
                          .fold(
                            (f) => f.maybeMap(
                              empty: (f) => 'Cannot be empty',
                              exceedingLength: (f) =>
                                  'Exceeding length, max: ${f.max}',
                              orElse: () => 'is this right',
                            ),
                            (r) => null,
                          ),
                      selectedItem: text);
                },
                loadFailure: (state) {
                  return Text('Loading Failed! Try again later.');
                });
          },
        ),
      ),
    );
  }
}
