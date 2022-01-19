import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/selected_individual_edit_for_sold_not_bought/selected_watcher_bloc.dart';
import 'package:shamagri_latest_flutter_version/domain/sold/sold.dart';

class TitleOfflineHook extends HookWidget {
  final int? quotationIndex;
  final Sold? bill;
  const TitleOfflineHook({@required this.quotationIndex, Key? key, this.bill})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    return BlocListener<SelectedWatcherBloc, SelectedWatcherState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.bill.quotations
            .getOrCrash()
            .get(this.quotationIndex!)
            .title!
            .getOrCrash();
      },
      child: Text(this
          .bill!
          .quotations
          .getOrCrash()
          .get(this.quotationIndex!)
          .title!
          .getOrCrash()
          .toString()),
    );
  }
}
