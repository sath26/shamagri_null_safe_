import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_list_manager/flutter_bloc_list_manager.dart';
import 'package:logger/logger.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/quotation_primitive/quotation_item_presentation_classes.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/quotation_primitive/build_context_x.dart';

import 'package:shamagri_latest_flutter_version/application/bought_sold/selected_individual_edit_for_sold_not_bought/selected_watcher_bloc.dart';
// import "package:shamagri_latest_flutter_version/application/journal/journal.dart";
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/quotation.dart';
import 'package:shamagri_latest_flutter_version/presentation/vendor/add/select/quotation.dart';
import 'package:provider/provider.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
// import 'package:keyboard_visibility/keyboard_visibility.dart';

//TODO: every package that needs this will need separate itemlistrenderer or need hook
// Hooks into the state from the `ItemListBloc` and renders the list
// portion of the UI.
class SelectedListRenderer extends StatelessWidget {
  // var iskeyboardvisible = false;
  // List<JournalEntry> selectedDrinks;
  final AutoScrollController controller;
  SelectedListRenderer(this.controller);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectedWatcherBloc, SelectedWatcherState>(
        /* children: context.formQuotations.forEach((entry) =>
                RawMaterialButton(
                    onPressed: () async {}, child: Text(entry.index))), */
        // listener: (context, state) {},
        builder: (context, state) {
      // var logger = Logger();
      // logger.wtf(state.bill);
      return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return RawMaterialButton(
            /* //TODO: use below for index

            state.bill.quotations
                    .getOrCrash()
                    .get(index)
                    .index
                    .getOrCrash()-1
             */
            onPressed: () async {
              await controller.scrollToIndex(index,
                  preferPosition: AutoScrollPosition.begin);
              controller.highlight(index);
            },
            elevation: 2.0,
            fillColor: Colors.black,
            // fillColor: Colors.white,
            // child: Text(selectedDrinks.toList()[index].id.toString()),
            child:
                /* Text(state.items
                    .where((item) => item.isSelected == true)
                    .toList()[index]
                    .id
                    .toString()), */

                Text(state.bill.quotations
                    .getOrCrash()
                    .get(index)
                    .index!
                    .getOrCrash()
                    .toString()),
            // Text(index.toString()),

            // Text(context.formQuotations.get(index).index.toString()),
            // padding: EdgeInsets.all(15.0),
            shape: CircleBorder(),
            constraints: BoxConstraints.tight(Size(36, 36)),
          );
        },
        itemCount: state.bill.quotations.length,
      );
    });
  }
}
