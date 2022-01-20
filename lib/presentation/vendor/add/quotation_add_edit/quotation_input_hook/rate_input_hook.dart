import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shamagri_latest_flutter_version/application/quotation_reso/quotation_bloc.dart';
import 'package:shamagri_latest_flutter_version/application/unit_reso.dart/unit_bloc.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/unit_reso/value_objects.dart';
// import 'package:notes_firebase_ddd_course/application/notes/note_form/note_form_bloc.dart';
// import 'package:notes_firebase_ddd_course/domain/notes/value_objects.dart';

class RateInputHook extends HookWidget {
  const RateInputHook({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocListener<QuotationBloc, QuotationState>(
        listenWhen: (p, c) => p.isEditing != c.isEditing,
        listener: (context, state) {
          textEditingController.text =
              state.quotation!.rate!.getOrCrash().toString();
        },
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              controller: textEditingController,
              decoration: const InputDecoration(
                labelText: 'Rate',
                counterText: '',
              ),
              maxLength: QuotationRate.maxLength,
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ], //
              maxLines: 1,
              minLines: 1,
              onChanged: (value) => context
                  .watch<QuotationBloc>()
                  .add(QuotationEvent.rateChanged(num.tryParse(value))),
              validator: (_) => context
                  .watch<QuotationBloc>()
                  .state
                  .quotation!
                  .rate!
                  .value
                  .fold(
                    (f) => f.maybeMap(
                      numberNegative: (f) => 'Cannot be zero',
                      numberTooBig: (f) => 'Number Too big, max: ${f.max}',
                      orElse: () => null,
                    ),
                    (r) => null,
                  ),
            )));
  }
}
