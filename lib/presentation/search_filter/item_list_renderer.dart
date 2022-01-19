import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart' as m;
import 'package:logger/logger.dart';
import 'package:shamagri_latest_flutter_version/application/quotation_reso/quotation_bloc.dart';
import 'package:shamagri_latest_flutter_version/application/quotation_reso/quotation_watcher/quotation_watcher_bloc.dart';
import 'package:shamagri_latest_flutter_version/presentation/routes/router.gr.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_list_manager/flutter_bloc_list_manager.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/selected_individual_edit_for_sold_not_bought/selected_watcher_bloc.dart';
// import "package:shamagri_latest_flutter_version/application/journal/journal.dart";
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/quotation.dart';
import 'package:shamagri_latest_flutter_version/presentation/icon/Quotation_add_icon.dart';
import 'package:shamagri_latest_flutter_version/presentation/vendor/add/select/quotation.dart';
import 'package:provider/provider.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:kt_dart/collection.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/quotation_primitive/quotation_item_presentation_classes.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/quotation_primitive/build_context_x.dart';

//TODO: every package that needs this will need separate itemlistrenderer or need hook
// Hooks into the state from the `ItemListBloc` and renders the list
// portion of the UI.

class ItemListRenderer extends StatelessWidget {
  AutoScrollController? controller;

  ItemListRenderer(AutoScrollController controller) {
    this.controller = controller;
  }
  final scrollDirection = Axis.vertical;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemListBloc, ItemListState>(
      builder: (_, state) {
        if (state is NoSourceItems) {
          return Text('No source items');
        }

        if (state is ItemEmptyState) {
          return Container(
              child: Column(
            children: [
              Text('No quotation available. Create new!'),
              IconButton(
                icon: Icon(
                  QuotationAddIcon.iUe800,
                  size: 30,
                  color: Colors.white,
                ),
                onPressed: () {
                  // do something
                  /* ExtendedNavigator.of(context)
                      .pushAddEditQuotationScreen(quotation: null); */
                  AutoRouter.of(context).replace(AddEditQuotationScreenRoute());
                },
              )
            ],
          ));
        }

        if (state is ItemResults<Quotation>) {
          bool? a = false;
          num entryIndex;
          return Consumer<FormQuotations>(
              builder: (context, formQuotations, child) {
            return ListView(
              scrollDirection: scrollDirection,
              controller: controller,
              children: state.items.map((entry) {
                entryIndex = (state.items.indexOf(entry)) + 1;
                return AutoScrollTag(
                  controller: this.controller!,
                  index: state.items.indexOf(entry) + 1,
                  key: ValueKey(state.items.indexOf(entry) + 1),
                  child: QuotationsWidget(
                      entry: entry,
                      entryIndex: entryIndex,
                      onChanged: (bool? value) {
                        Logger logger = Logger();

                        if (value == true) {
                          a = value;
                          print("entryIndex: $entryIndex");
                          print("state item no: " +
                              state.items.indexOf(entry).toString());

                          BlocProvider.of<QuotationWatcherBloc>(context).add(
                              QuotationWatcherEvent.changeSelected(
                                  state.items, value!, entry));
                          /*  BlocProvider.of<QuotationBloc>(context).add(
                              QuotationEvent.isSelectedOrNot(
                                  m.optionOf(entry), value)); */
                          context.formQuotations = context.formQuotations
                              .plusElement(SelectedItemPrimitive.fromDomain(
                                  entry, (state.items.indexOf(entry)) + 1));
                          logger.i('entry plus' + entry.toString());
                          logger.i('entry condition' + value.toString());

                          BlocProvider.of<SelectedWatcherBloc>(context)
                              .add(SelectedWatcherEvent.selected(
                                  //entry, value, state.items.indexOf(entry) + 1));
                                  context.formQuotations));
                        } else {
                          a = value;
                          /*   BlocProvider.of<QuotationBloc>(context).add(
                              QuotationEvent.initialized(m.optionOf(entry)));
                          BlocProvider.of<QuotationBloc>(context).add(
                              QuotationEvent.isSelectedOrNot(
                                  m.optionOf(entry), value)); */
                          BlocProvider.of<QuotationWatcherBloc>(context).add(
                              QuotationWatcherEvent.changeSelected(
                                  state.items, value!, entry));
                          context.formQuotations = context.formQuotations
                              .minusElement(SelectedItemPrimitive.fromDomain(
                                  entry, (state.items.indexOf(entry)) + 1));
                          logger.i('entry minus' + entry.toString());
                          logger.i('entry condition   ' + value.toString());
                          BlocProvider.of<SelectedWatcherBloc>(context)
                              .add(SelectedWatcherEvent.selected(
                                  //entry, value, state.items.indexOf(entry) + 1));
                                  context.formQuotations));
                        }
                      }),
                  /* QuotationsWidget(
                              entry: entry,
                              onChanged: (bool value) {
                                /* state.items[state.items.indexOf(entry)]
                                    .copyWith();
                                BlocProvider.of<QuotationWatcherBloc>(context)
                                    .add(QuotationWatcherEvent
                                        .quotationsSelected(state.items)); */
                                
                            ), */
                );
              }
                  /* (entry) => QuotationsWidget(
                      entry: entry,
                      onChanged: (bool value) {
                        // print(value);
                        // setState(() {});
                        BlocProvider.of<JournalEntryBloc>(context)
                            .add(SelectJournal(
                                //entry, value, state.items.indexOf(entry) + 1));
                                entry,
                                value));
                      },
                    ), */

                  /*ListTile(
                      key: ValueKey(entry.id),
                      title: Text(entry.title),
                      subtitle: Text(entry.description),
                      )
                    */
                  ).toList(),
            );
          });
        }

        return Container();
      },
    );
  }
}
