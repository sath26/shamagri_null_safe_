import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/list_bought/list_bought_bloc.dart';
// import 'package:shamagri_latest_flutter_version/domain/list_Bought/list_bought.dart';
// import 'package:kt_dart/collection.dart';
// import 'package:shamagri_latest_flutter_version/domain/bought/bought.dart';
import 'package:shamagri_latest_flutter_version/domain/not_form_bought/not_form_bought.dart';
import 'package:shamagri_latest_flutter_version/presentation/routes/router.gr.dart';

class ListBoughtInvoiceCard extends StatelessWidget {
  final BoughtNotForm? listBought;

  const ListBoughtInvoiceCard({
    Key? key,
    @required this.listBought,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // color: listBought.getOrCrash(),
      child: InkWell(
        onTap: () {
          /* AutoRouter.of(context)
              .push(SingleBoughtBillRoute(boughtBillBoughtOption: listBought)); */
        },
        onLongPress: () {
          // final ListBoughtBloc = context.bloc<ListBoughtBloc>();
          // _showDeletionDialog(context, ListBoughtBloc);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                listBought!.total!.getOrCrash().toString(),
                style: const TextStyle(fontSize: 18),
              ),
              /*  if (listBought.todos.length > 0) ...[
                const SizedBox(height: 4),
                Wrap(
                  spacing: 8,
                  children: <Widget>[
                    ...listBought.todos
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

  void _showDeletionDialog(
      BuildContext context, ListBoughtBloc listBoughtBloc) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Selected listBought:'),
          content: Text(
            listBought!.total!.getOrCrash().toString(),
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
                // ListBoughtBloc.add(listBoughtActorEvent.deleted(listBought));
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
