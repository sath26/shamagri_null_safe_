import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/selected_individual_edit_for_sold_not_bought/selected_watcher_bloc.dart';
// import 'package:shamagri_latest_flutter_version/application/journal/journal.dart';
import 'package:shamagri_latest_flutter_version/application/quotation_reso/quotation_bloc.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/quotation.dart';
import 'package:dartz/dartz.dart' as m;

import 'package:shamagri_latest_flutter_version/application/bought_sold/quotation_primitive/quotation_item_presentation_classes.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/quotation_primitive/build_context_x.dart';
import 'package:provider/provider.dart';
import 'package:kt_dart/collection.dart';

/* class QuotationWidget extends StatefulWidget {
   final JournalEntry entry;
  final Function onChanged;
  QuotationWidget({Key key,  this.entry, this.onChanged}) : super(key: key);

  @override
  _QuotationWidgetState createState() => _QuotationWidgetState();
}

class _QuotationWidgetState extends State<QuotationWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /* Checkbox(
          value: entry.isPublished,
          onChanged: onChanged,
        ), */
        Checkbox(
          value: a,
          onChanged: (bool value) {
            print(value);

            setState(() {
              a = value;
            });
          },
        ),
        Text(entry.title),
        Text(entry.description)
      ],
    );
  }
} */
class QuotationsWidget extends StatefulWidget {
  final Quotation? entry;
  final void Function(bool?)? onChanged;
  final num? entryIndex;

  QuotationsWidget({Key? key, this.entry, this.onChanged, this.entryIndex})
      : super(key: key);

  @override
  _QuotationsWidgetState createState() => _QuotationsWidgetState();
}

class _QuotationsWidgetState extends State<QuotationsWidget> {
  bool a = false;

  @override
  Widget build(BuildContext context) {
    //bool a = false;
    return Card(
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Checkbox(
                value: widget.entry!.isSelected!.getOrCrash(),
                onChanged: widget.onChanged,
              ),
              title: Text(widget.entry!.title!.getOrCrash()),
              subtitle: Text(widget.entry!.rate!.getOrCrash().toString()),
              // +
              //       " / " +
              //       widget.entry.quantity.getOrCrash().toString() +
              //       " " +
              //       widget.entry.measuremntUnit.getOrCrash(),
              trailing: IconButton(
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ListTile(
                              leading: new Icon(Icons.edit),
                              title: new Text('Edit'),
                              onTap: () {
                                // Navigator.pop(context);
                                /* context
                                    .bloc<AuthBloc>()
                                    .add(const AuthEvent.signedOut()); */
                              },
                            ),
                            ListTile(
                              leading: new Icon(Icons.delete),
                              title: new Text('Delete'),
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        );
                      });
                },
              ),
            ),
            /* BlocBuilder<QuotationBloc, QuotationState>(
                buildWhen: (p, c) =>
                    p.quotation.isSelected.getOrCrash() !=
                    c.quotation.isSelected.getOrCrash(),
                builder: (BuildContext context, state) {
                  return Checkbox(
                    value: state.quotation.isSelected.getOrCrash(),
                    onChanged: widget.onChanged,
                  );
                }), */

            /* Align(
                alignment: Alignment.center,
                child: Text(
                  widget.entry.rate.getOrCrash().toString() +
                      "/ " +
                      widget.entry.measuremntUnit.getOrCrash(),
                )),
            Align(
                alignment: Alignment.centerRight,
                child: Text(widget.entry.quantity.getOrCrash().toString())) */
          ],
        ),
      ),
    );
  }
}
