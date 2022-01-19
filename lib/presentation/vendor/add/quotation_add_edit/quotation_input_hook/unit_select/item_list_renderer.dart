//the input value and the list both will be here
import 'dart:developer';

import 'package:auto_route/auto_route.dart';
// import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_list_manager/flutter_bloc_list_manager.dart';
// import 'package:flutter_form_bloc/flutter_form_bloc.dart';
// import 'package:shamagri_latest_flutter_version/application/journal/journal.dart';
import 'package:shamagri_latest_flutter_version/application/quotation_reso/quotation_bloc.dart';
import 'package:shamagri_latest_flutter_version/application/unit_reso.dart/unit_actor/unit_actor_bloc.dart';
import 'package:shamagri_latest_flutter_version/application/unit_reso.dart/unit_bloc.dart';
import 'package:shamagri_latest_flutter_version/domain/core/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/quotation.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/unit_reso/measuremnt.dart';
import 'package:shamagri_latest_flutter_version/domain/unit_reso/value_objects.dart';
import 'package:shamagri_latest_flutter_version/presentation/routes/router.gr.dart';

// import 'package:flutter_hooks/flutter_hooks.dart';

// import "package:shamagri_latest_flutter_version/application/journal/journal.dart";
// import 'package:shamagri_latest_flutter_version/infrastructure/unit_easy/model/models.dart';
// import 'package:shamagri_latest_flutter_version/presentation/vendor/add/select/quotation.dart';
// import 'package:scroll_to_index/scroll_to_index.dart';

//TODO: every package that needs this will need separate itemlistrenderer or need hook
// Hooks into the state from the `ItemListBloc` and renders the list
// portion of the UI.
class ItemListRenderer extends StatefulWidget {
  // final textEditingController = useTextEditingController();

  ItemListRenderer({Key? key}) : super(key: key);

  @override
  _ItemListRendererState createState() => _ItemListRendererState();
}

class _ItemListRendererState extends State<ItemListRenderer> {
  Measuremnt? unit;
  int _groupValue = -1;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemListBloc, ItemListState>(
      builder: (_, state) {
        if (state is NoSourceItems) {
          return Text('No source items');
        }

        if (state is ItemEmptyState) {
          return Text('No matching results');
        }

        // if (state is ItemResults<Unit>) {
        if (state is ItemResults<Measuremnt>) {
          Object? radioItem = '';

          return ListView(
            // shrinkWrap: true,
            children: state.items
                .map(
                  (entry) => RadioListTile(
                    groupValue: radioItem,
                    title: Text(entry.title!.getOrCrash()),
                    value: entry.title!.getOrCrash(),
                    onChanged: (value) {
                      // String unit = value;
                      setState(() {
                        // radioItem = val;
                        radioItem = value;
                        log("$value: radioItem");
                      });
                      /* log(radioItem.toString());
                      /*  context
                          .read<QuotationBloc>()
                          .add(QuotationEvent.unitChanged(value)); */
                      QuotationRate rate =
                          context.read<QuotationBloc>().state.quotation.rate;
                      QuotationQuantity quantity = context
                          .read<QuotationBloc>()
                          .state
                          .quotation
                          .quantity;

                      UniqueId id =
                          context.read<QuotationBloc>().state.quotation.id;

                      QuotationTitle title =
                          context.read<QuotationBloc>().state.quotation.title;

                      Quotation a = Quotation(
                          rate: rate,
                          title: title,
                          quantity: quantity,
                          measuremntUnit: QuotationUnit(unit),
                          id: id);
                      ExtendedNavigator.of(context)
                          .pushAddEditQuotationScreen(quotation: a); */
                    },
                  ),
                )
                .toList(),
          );
        }

        return Container();
      },
    );

    /* Widget _myRadioButton({String? title, int? value, Function(int?)? onChanged}) {
      return RadioListTile(
        value: value,
        groupValue: _groupValue,
        onChanged: onChanged,
        title: Text(title!),
      );
    } */
  }
}
