import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/list_sold/list_sold_bloc.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/list_sold_invoice/list_sold_invoice_bloc.dart';
import 'package:shamagri_latest_flutter_version/presentation/vendor/critical_failure_display_widget.dart';
import 'package:shamagri_latest_flutter_version/presentation/vendor/sold/invoice_sold_widgets/critical_invoice_sold_failure_display_widget.dart';
import 'package:shamagri_latest_flutter_version/presentation/vendor/sold/invoice_sold_widgets/error_invoice_sold_card_widget.dart';
import 'package:shamagri_latest_flutter_version/presentation/vendor/sold/invoice_sold_widgets/invoice_sold_card.dart';
import 'package:shamagri_latest_flutter_version/presentation/vendor/sold/list_sold_widgets/error_sold_card_widget.dart';
import 'package:shamagri_latest_flutter_version/presentation/vendor/sold/list_sold_widgets/sold_card.dart';

class InvoiceSoldOverviewBody extends StatelessWidget {
  ScrollController? scrollController;
  InvoiceSoldOverviewBody({Key? key, this.scrollController});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ListSoldInvoiceBloc, ListSoldInvoiceState>(
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
                  final listSold = (state.sold as List)[index];
                  if (listSold.failureOption.isSome()) {
                    return ErrorListSoldInvoiceCard(listSold: listSold);
                  } else {
                    return ListSoldInvoiceCard(listSold: listSold);
                  }
                },
                itemCount: state.sold!.length,
              );
            }
          },
          loadFailure: (state) {
            return CriticalFailureSoldInvoiceDisplay(
              failure: state.soldFailure,
            );
          },
        );
      },
    );
  }
}
