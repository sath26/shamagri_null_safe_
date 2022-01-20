import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/selected_individual_edit_for_sold_not_bought/selected_watcher_bloc.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/sold/sold.dart';

class BuyerInputHook extends HookWidget {
  /*  final num quotationIndex;
  final Sold bill; */
  const BuyerInputHook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    return BlocBuilder<SelectedWatcherBloc, SelectedWatcherState>(
        /* listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.bill.quotations
            .getOrCrash()
            .get(this.quotationIndex)
            .title
            .getOrCrash();
      }, */

        builder: (context, state) {
      return Builder(
        builder: (BuildContext context) {
          String validMessage = context
              .watch<SelectedWatcherBloc>()
              .state
              .bill!
              .buyerEmail!
              .value
              .fold(
                (f) => f.maybeMap(
                  empty: (f) => 'Cannot be empty',
                  invalidEmail: (f) => 'Please provide valid email address',
                  notSignedUp: (f) => 'This email has not been registered yet!',
                  orElse: () => 'null',
                ),
                (r) => 'null',
              );
          return Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                controller: textEditingController,
                decoration: const InputDecoration(
                  labelText: 'Buyer Email',
                  counterText: '',
                ),
                /*  maxLength: SoldBuyerEmail.maxLength,
               keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ], */
                maxLines: 1,
                minLines: 1,
                onChanged: (value) {
                  return context
                      .read<SelectedWatcherBloc>()
                      .add(SelectedWatcherEvent.emailChanged(value));
                },
                /* onChanged: (value) => context
                      .read<SelectedWatcherBloc>().
                      state.copyWith(
                        bill: state.bill.copyWith(
                          quotations[quotationIndex].rate: num.tryParse(value)
                        ),
                      ) */

                validator: (_) => validMessage,
              ));
        },
      );
    });
  }
}
