import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/list_sold/list_sold_bloc.dart';
import 'package:shamagri_latest_flutter_version/domain/list_sold/list_sold_failure.dart';
import 'package:shamagri_latest_flutter_version/presentation/vendor/critical_failure_display_widget.dart';
import 'package:shamagri_latest_flutter_version/presentation/vendor/critical_failure_display_widget.dart';
import 'package:shamagri_latest_flutter_version/presentation/vendor/sold/list_sold_widgets/error_sold_card_widget.dart';
import 'package:shamagri_latest_flutter_version/presentation/vendor/sold/list_sold_widgets/sold_card.dart';

class ListSoldOverviewBody extends StatelessWidget {
  ScrollController? scrollController;
  ListSoldOverviewBody({Key? key, this.scrollController});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ListSoldBloc, ListSoldState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (state) {
            if (state.watchFirstTenCountIsZero == true) {
              return Center(child: Text("Create bill"));
            } else {
              return ListView.builder(
                controller: this.scrollController,
                itemBuilder: (context, index) {
                  final listSold = state.listSold[index];
                  if (listSold.failureOption.isSome()) {
                    return ErrorListSoldCard(listSold: listSold);
                  } else {
                    return ListSoldCard(listSold: listSold);
                  }
                },
                itemCount: state.listSold.length,
              );
            }
          },
          loadFailure: (state) {
            if (ListSoldFailure.isEmpty() != null) {
              return Center(child: Text("Create bill"));
            } else {
              return CriticalFailureDisplay(
                failure: state.listSoldFailure,
              );
            }
          },
        );
      },
    );
  }
}
