import 'package:flutter/material.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:flutter_bloc_list_manager/flutter_bloc_list_manager.dart';

// As we've built a UI around filtering, we need display-friendly
// labels for the underlying property names.
// This could easily be provided statically by the base item class instead.
const Map<String, String> _filterPropertyLabelMap = {
  'author': 'Author',
  'category': 'Category',
  'isPublished': 'Published',
};

// Essentially just a pass-through widget to simplify the rendering
// of each condition group.
class FilterConditionGroup extends StatelessWidget {
  final MapEntry<String, List<String>>? condition;
  final Function(String property, String value)? isOptionActive;
  final Function? updateCondition;

  FilterConditionGroup({
    Key? key,
    @required this.condition,
    @required this.isOptionActive,
    @required this.updateCondition,
  }) : super(key: key);

  @override
  Widget build(_) {
    return Container(
      key: ValueKey(condition!.key),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _filterPropertyLabelMap[condition!.key] ?? "",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          ...condition!.value.map(
            (option) => CheckboxListTile(
              key: ValueKey(option),
              title: Text(option),
              value: isOptionActive!(condition!.key, option),
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (isChecked) =>
                  updateCondition!(condition!.key, option, isChecked),
            ),
          ),
        ],
      ),
    );
  }
}
