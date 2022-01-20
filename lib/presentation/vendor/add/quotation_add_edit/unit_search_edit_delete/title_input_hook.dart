import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shamagri_latest_flutter_version/application/unit_reso.dart/unit_bloc.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/unit_reso/value_objects.dart';
// import 'package:notes_firebase_ddd_course/application/notes/note_form/note_form_bloc.dart';
// import 'package:notes_firebase_ddd_course/domain/notes/value_objects.dart';

class TitleInputHook extends HookWidget {
  const TitleInputHook({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocListener<UnitBloc, UnitState>(
        listenWhen: (p, c) => p.isEditing != c.isEditing,
        listener: (context, state) {
          textEditingController.text = state.unit!.title!.getOrCrash();
        },
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              controller: textEditingController,
              decoration: const InputDecoration(
                labelText: 'Note',
                counterText: '',
              ),
              maxLength: QuotationTitle.maxLength,
              maxLines: null,
              minLines: 5,
              onChanged: (value) =>
                  context.watch<UnitBloc>().add(UnitEvent.unitChanged(value)),
              validator: (_) => context
                  .watch<UnitBloc>()
                  .state
                  .unit!
                  .title!
                  .value
                  .fold(
                    (f) => f.maybeMap(
                      empty: (f) => 'Cannot be empty',
                      exceedingLength: (f) => 'Exceeding length, max: ${f.max}',
                      orElse: () => null,
                    ),
                    (r) => null,
                  ),
            )));
  }
}
