import 'package:auto_route/auto_route.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_list_manager/flutter_bloc_list_manager.dart';
import 'package:intl/intl.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/selected_individual_edit_for_sold_not_bought/selected_watcher_bloc.dart';

// import 'package:shamagri_latest_flutter_version/application/journal/journal.dart';
import 'package:shamagri_latest_flutter_version/domain/sold/sold.dart';
import 'package:shamagri_latest_flutter_version/presentation/routes/router.gr.dart';

class Proceed extends StatelessWidget {
  final Sold? afterSelectSoldOption;
  final FirebaseAnalytics _firebaseAnalytics = FirebaseAnalytics.instance;
  Proceed({Key? key, this.afterSelectSoldOption}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectedWatcherBloc, SelectedWatcherState>(
      builder: (_, state) {
        // final selectedDrinks = context.watch<JournalEntryBloc>().selectedDrinks;
        /*   if (state is NoSourceItems) {
          return Text('No source items');
        }

        if (state is ItemEmptyState) {
          return Text('No matching results');
        } */

        // if (state is Loaded) {
        if (state.bill!.quotations!.length == 0) {
          return ElevatedButton.icon(
            onPressed: null,
            label: Text("Proceed (${state.bill!.quotations!.length})"),
            icon: Icon(Icons.arrow_forward, size: 18),
          );
        } else {
          return ElevatedButton.icon(
            onPressed: () async {
              // Respond to button press
              DateFormat dateFormat = DateFormat("yyyy-MM-dd HH:mm:ss");
              String now = dateFormat.format(DateTime.now());
              await _firebaseAnalytics.logEvent(
                name: 'proceed_to_after_select',
                parameters: {
                  'clicked_time': now,
                },
              );
              /* ExtendedNavigator.of(context)
                  .pushAfterSelect(afterSelectSoldOption: state.bill); */
              AutoRouter.of(context)
                  .replace(AfterSelectRoute(afterSelectSoldOption: state.bill));
            },
            label: Text("Proceed (${state.bill!.quotations!.length})"),
            icon: Icon(Icons.arrow_forward, size: 18),
          );
          // }
        }

        // return Container();
      },
    );
  }
}
