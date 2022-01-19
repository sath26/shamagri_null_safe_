//the input value and the list both will be here
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_list_manager/flutter_bloc_list_manager.dart';
// import 'package:flutter_form_bloc/flutter_form_bloc.dart';
// import 'package:shamagri_latest_flutter_version/application/journal/journal.dart';
import 'package:shamagri_latest_flutter_version/application/unit_reso.dart/unit_actor/unit_actor_bloc.dart';
import 'package:shamagri_latest_flutter_version/application/unit_reso.dart/unit_bloc.dart';
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
class ItemListRenderer extends StatelessWidget {
  // final textEditingController = useTextEditingController();

  ItemListRenderer();
  Measuremnt? unit;
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
          return ListView(
            children: state.items
                .map((Measuremnt? entry) =>
                        /* ListTile(
                          key: ValueKey(entry.id),
                          // title: Text(entry.unit),
                          title: Text(entry.title),
                        ) */
                        // isEditing is true or false

                        entry?.isEditing
                            ? TextFormField(
                                // controller: textEditingController,
                                initialValue: entry!.title!.getOrCrash(),
                                maxLength: UnitBody.maxLength,
                                onChanged: (value) =>
                                    BlocProvider.of<UnitBloc>(context)
                                        .add(UnitEvent.unitChanged(value)),
                                validator: (_) =>
                                    BlocProvider.of<UnitBloc>(context)
                                        .state
                                        .unit
                                        .title
                                        .value
                                        .fold(
                                          (f) => f.maybeMap(
                                            empty: (f) => 'Cannot be empty',
                                            exceedingLength: (f) =>
                                                'Exceeding length, max: ${f.max}',
                                            orElse: () => null,
                                          ),
                                          (r) => null,
                                        ),
                                decoration: InputDecoration(
                                  prefixIcon: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.delete),
                                  ),
                                  hintText: "Edit unit",
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      BlocProvider.of<UnitBloc>(context)
                                          .add(const UnitEvent.saved());
                                      BlocProvider.of<UnitBloc>(context).add(
                                          UnitEvent.showsInputForEdit(
                                              optionOf(entry), false));
                                    },
                                    icon: Icon(Icons.done),
                                  ),
                                ))
                            : /* Row(
                                children: [
                                  Text(entry.title),
                                  IconButton(
                                    icon: Icon(
                                      Icons.edit,
                                      color: Colors.black,
                                    ),
                                    onPressed: () {
                                      // do something
                                      // the given row must be replaced with inputSHown
                                      //inputShown must come by default before loaded
                                      // entry.isPublished = true;
                                      BlocProvider.of<JournalEntryBloc>(context)
                                          .add(SelectJournal(
                                              //entry, value, state.items.indexOf(entry) + 1));
                                              entry,
                                              true));
                                    },
                                  ),
                                ],
                              ) */

                            ListTile(
                                leading: IconButton(
                                  icon: Icon(
                                    Icons.delete,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {
                                    // do something
                                    // the given row must be replaced with inputSHown
                                    //inputShown must come by default before loaded
                                    // entry.isPublished = true;
                                    /*   BlocProvider.of<UnitBloc>(context).add(
                                        UnitEvent.initialized(optionOf(entry))); */
                                    final unitActorBloc =
                                        BlocProvider.of<UnitActorBloc>(context);
                                    _showDeletionDialog(
                                        context, unitActorBloc, entry!);
                                    //the above object can replace any other object before edit
                                  },
                                ),
                                trailing: IconButton(
                                  icon: Icon(
                                    Icons.edit,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {
                                    // do something
                                    // the given row must be replaced with inputSHown
                                    //inputShown must come by default before loaded
                                    // entry.isPublished = true;
                                    /*   BlocProvider.of<UnitBloc>(context).add(
                                        UnitEvent.initialized(optionOf(entry))); */
                                    /*  ExtendedNavigator.of(context)
                                        .pushAddEditMeasurementScreen(
                                            measuremnt: entry); */
                                    AutoRouter.of(context).replace(
                                        AddEditMeasurementScreenRoute(
                                            measuremnt: entry));

                                    //the above object can replace any other object before edit
                                  },
                                ),
                                title: Text(entry.title!.getOrCrash()),
                              )

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

                    )
                .toList(),
          );
        }

        return Container();
      },
    );
  }

  void _showDeletionDialog(
      BuildContext context, UnitActorBloc unitActorBloc, Measuremnt entry) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Selected note:'),
          content: Text(
            entry.title!.getOrCrash(),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          actions: <Widget>[
            FlatButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('CANCEL'),
            ),
            FlatButton(
              onPressed: () {
                unitActorBloc.add(UnitActorEvent.deleted(entry));
                Navigator.pop(context);
              },
              child: const Text('DELETE'),
            ),
          ],
        );
      },
    );
  }
}
