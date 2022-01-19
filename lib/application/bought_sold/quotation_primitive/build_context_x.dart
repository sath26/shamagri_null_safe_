import 'package:flutter/widgets.dart';
import 'package:kt_dart/collection.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/quotation_primitive/quotation_item_presentation_classes.dart';
import 'package:provider/provider.dart';

extension FormQuotationsX on BuildContext {
  KtList<SelectedItemPrimitive> get formQuotations =>
      Provider.of<FormQuotations>(this, listen: false).value;
  set formQuotations(KtList<SelectedItemPrimitive> value) =>
      Provider.of<FormQuotations>(this, listen: false).value = value;
}
