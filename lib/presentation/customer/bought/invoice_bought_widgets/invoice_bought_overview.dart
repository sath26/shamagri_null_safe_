import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/list_bought/list_bought_bloc.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/list_bought_invoice/list_bought_invoice_bloc.dart';
import 'package:shamagri_latest_flutter_version/presentation/vendor/critical_failure_display_widget.dart';
import 'package:shamagri_latest_flutter_version/presentation/customer/bought/invoice_bought_widgets/critical_invoice_bought_failure_display_widget.dart';
import 'package:shamagri_latest_flutter_version/presentation/customer/bought/invoice_bought_widgets/error_invoice_bought_card_widget.dart';
import 'package:shamagri_latest_flutter_version/presentation/customer/bought/invoice_bought_widgets/invoice_bought_card.dart';
// import 'package:shamagri_latest_flutter_version/presentation/customer/bought/list_bought_widgets/error_bought_card_widget.dart';
import 'package:shamagri_latest_flutter_version/presentation/customer/bought/list_bought_widgets/bought_card.dart';

class InvoiceBoughtOverviewBody extends StatelessWidget {
  ScrollController? scrollController;
  InvoiceBoughtOverviewBody({Key? key, this.scrollController});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ListBoughtInvoiceBloc, ListBoughtInvoiceState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (state) {
            if (state.watchFirstTenCountIsZero == true) {
              return Center(child: Text("its empty!"));
            } else {
              return ListView.builder(
                itemBuilder: (context, index) {
                  final listBought = state.bought![index];
                  if (listBought.failureOption.isSome()) {
                    return ErrorListBoughtInvoiceCard(listBought: listBought);
                  } else {
                    return ListBoughtInvoiceCard(listBought: listBought);
                  }
                },
                itemCount: state.bought?.length,
              );
            }
          },
          loadFailure: (state) {
            return CriticalFailureBoughtInvoiceDisplay(
              failure: state.boughtFailure,
            );
          },
        );
      },
    );
  }
}
