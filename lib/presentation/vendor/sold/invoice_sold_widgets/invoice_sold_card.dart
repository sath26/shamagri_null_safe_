import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/list_sold/list_sold_bloc.dart';
import 'package:shamagri_latest_flutter_version/domain/list_sold/list_sold.dart';
import 'package:kt_dart/collection.dart';
import 'package:shamagri_latest_flutter_version/domain/sold/sold.dart';
import 'package:shamagri_latest_flutter_version/domain/sold_not_form/sold_not_form.dart';
import 'package:shamagri_latest_flutter_version/presentation/routes/router.gr.dart';

class ListSoldInvoiceCard extends StatelessWidget {
  final SoldNotForm? listSold;

  const ListSoldInvoiceCard({
    Key? key,
    @required this.listSold,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // color: listSold.getOrCrash(),
      child: InkWell(
        onTap: () {
          /* ExtendedNavigator.of(context)
              .pushSingleSoldBill(soldBillSoldOption: listSold); */
          AutoRouter.of(context)
              .replace(SingleSoldBillRoute(soldBillSoldOption: listSold));
        },
        onLongPress: () {
          // final ListSoldBloc = context.bloc<ListSoldBloc>();
          // _showDeletionDialog(context, ListSoldBloc);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                listSold!.total.getOrCrash().toString(),
                style: const TextStyle(fontSize: 18),
              ),
              /*  if (listSold.todos.length > 0) ...[
                const SizedBox(height: 4),
                Wrap(
                  spacing: 8,
                  children: <Widget>[
                    ...listSold.todos
                        .getOrCrash()
                        .map(
                          (todo) => TodoDisplay(todo: todo),
                        )
                        .iter,
                  ],
                )
              ] */
            ],
          ),
        ),
      ),
    );
  }

  void _showDeletionDialog(BuildContext context, ListSoldBloc listSoldBloc) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Selected listSold:'),
          content: Text(
            listSold!.total.getOrCrash().toString(),
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
                // ListSoldBloc.add(listSoldActorEvent.deleted(listSold));
                // Navigator.pop(context);
              },
              child: const Text('DELETE'),
            ),
          ],
        );
      },
    );
  }
}

/* class TodoDisplay extends StatelessWidget {
  final TodoItem todo;

  const TodoDisplay({
    Key key,
    @required this.todo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        if (todo.done)
          Icon(
            Icons.check_box,
            color: Theme.of(context).accentColor,
          ),
        if (!todo.done)
          Icon(
            Icons.check_box_outline_blank,
            color: Theme.of(context).disabledColor,
          ),
        Text(todo.name.getOrCrash()),
      ],
    );
  }
} */
