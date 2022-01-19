import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/list_bought/list_bought_bloc.dart';
import 'package:shamagri_latest_flutter_version/domain/list_bought/list_bought_failure.dart';
import 'package:shamagri_latest_flutter_version/presentation/customer/critical_failure_display_widget.dart';
import 'package:shamagri_latest_flutter_version/presentation/customer/bought/list_bought_widgets/error_bought_card_widget.dart';
import 'package:shamagri_latest_flutter_version/presentation/customer/bought/list_bought_widgets/bought_card.dart';

class ListBoughtOverviewBody extends StatelessWidget {
  ScrollController? scrollController;
  ListBoughtOverviewBody({Key? key, this.scrollController});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ListBoughtBloc, ListBoughtState>(
      buildWhen: (p, c) {
        Logger logger = new Logger();
        logger.v("previous: " + p.toString());
        logger.v("current after previous: " + c.toString());
        return p != c;
      },
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (state) {
            print('length    ' + state.listBought.length.toString());
            if (state.watchFirstTenCountIsZero == true) {
              return Center(child: Text("Ask for bill in Shamagri!"));
            } else {
              return ListView.builder(
                controller: this.scrollController,
                itemBuilder: (context, index) {
                  final listBought = state.listBought[index];
                  if (listBought.failureOption.isSome()) {
                    // listBought.failureOption.map((a) => null)

                    return ErrorListBoughtCard(listBought: listBought);
                  } else if (state.watchAfterTenCountIsZero == true) {
                    return ListBoughtCard(listBought: listBought);
                  } else {
                    return /* index >= state.listBought.length
                          ? Container(
                              alignment: Alignment.center,
                              child: Center(
                                child: SizedBox(
                                  width: 33,
                                  height: 33,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 1.5,
                                  ),
                                ),
                              ),
                            )
                          : */
                        ListBoughtCard(listBought: listBought);
                  }
                },
                itemCount: state.listBought.length,
              );
            }
          },
          loadFailure: (state) {
            if (ListBoughtFailure.isEmpty() != null) {
              return Center(child: Text("Ask for bill in Shamagri!"));
            } else {
              return CriticalFailureDisplay(
                failure: state.listBoughtFailure,
              );
            }
          },
        );
      },
    );
  }
}
