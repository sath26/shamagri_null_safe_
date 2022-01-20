import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/selected_individual_edit_for_sold_not_bought/selected_watcher_bloc.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/sold/sold.dart';
import 'package:shamagri_latest_flutter_version/domain/sold/value_objects.dart';

class RateOfflineHook extends HookWidget {
  final int? quotationIndex;
  final Sold? bill;
  const RateOfflineHook({@required this.quotationIndex, Key? key, this.bill})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocListener<SelectedWatcherBloc, SelectedWatcherState>(
        listenWhen: (p, c) => p.isEditing != c.isEditing,
        listener: (context, state) {
          textEditingController.text = state.bill!.quotations!
              .getOrCrash()
              .get(this.quotationIndex!)
              .rate!
              .getOrCrash()
              .toString();
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
              onChanged: (value) {
                return context.watch<SelectedWatcherBloc>().add(
                    SelectedWatcherEvent.rateChanged(
                        billQuotations:
                            List3Sold(this.bill!.quotations!.getOrCrash()),
                        billQuotationRate: num.tryParse(value)!,
                        entry: this
                            .bill!
                            .quotations!
                            .getOrCrash()
                            .get(this.quotationIndex!)));
              },
              /* onChanged: (value) => context
                  .read<SelectedWatcherBloc>().
                  state.copyWith(
                    bill: state.bill.copyWith(
                      quotations[quotationIndex].rate: num.tryParse(value)
                    ),
                  ) */

              validator: (_) => context
                  .watch<SelectedWatcherBloc>()
                  .state
                  .bill!
                  .quotations!
                  .getOrCrash()
                  .get(this.quotationIndex!)
                  .rate!
                  .value
                  .fold(
                    (f) => f.maybeMap(
                      empty: (f) => 'Cannot be empty',
                      numberNegative: (f) => 'Cannot be zero',
                      numberTooBig: (f) => 'Number Too big, max: ${f.max}',
                      orElse: () => null,
                    ),
                    (r) => null,
                  ),
            )));
  }
}
