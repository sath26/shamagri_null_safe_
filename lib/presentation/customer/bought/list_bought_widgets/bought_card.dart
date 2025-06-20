import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/list_bought/list_bought_bloc.dart';
import 'package:shamagri_latest_flutter_version/domain/list_bought/list_bought.dart';
import 'package:kt_dart/collection.dart';
import 'package:shamagri_latest_flutter_version/presentation/routes/router.gr.dart';

class ListBoughtCard extends StatelessWidget {
  final ListBought? listBought;

  const ListBoughtCard({
    Key? key,
    @required this.listBought,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // color: listbought.getOrCrash(),
      child: InkWell(
        onTap: () {
          AutoRouter.of(context)
              .push(BoughtInvoiceRoute(boughtId: listBought!.id!.getOrCrash()));
        },
        onLongPress: () {
          // final ListboughtBloc = context.bloc<ListboughtBloc>();
          // _showDeletionDialog(context, ListboughtBloc);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                listBought!.sellerDisplayName!.getOrCrash().toString(),
                style: const TextStyle(fontSize: 18),
              ),
              Text(
                listBought!.total!.getOrCrash().toString(),
                style: const TextStyle(fontSize: 18),
              ),

              /*  if (listbought.todos.length > 0) ...[
                const SizedBox(height: 4),
                Wrap(
                  spacing: 8,
                  children: <Widget>[
                    ...listbought.todos
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
          title: const Text('Selected listbought:'),
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
                // ListboughtBloc.add(listboughtActorEvent.deleted(listbought));
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
