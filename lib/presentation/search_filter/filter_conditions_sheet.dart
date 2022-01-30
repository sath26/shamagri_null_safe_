import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_list_manager/flutter_bloc_list_manager.dart';
import 'package:shamagri_latest_flutter_version/presentation/search_filter/filter_condition_group.dart';

// Hooks into the `FilterConditionsBloc` in order to render the filtering UI.
class FilterConditionsSheet extends StatelessWidget {
  // You must pass the FilterConditionsBloc to this widget, as the build
  // context will now belong to the Scaffold rendering the bottom sheet.
  final FilterConditionsBloc _filterConditionsBloc;

  const FilterConditionsSheet({@required filterConditionsBloc})
      : assert(filterConditionsBloc != null),
        _filterConditionsBloc = filterConditionsBloc;

  // Helper to avoid duplication in the child components and to avoid
  // having to pass the bloc down another level.
  // Handles toggling property/value pair in the filter conditions bloc.
  void _updateCondition(String property, String value, bool isChecked) {
    isChecked
        ? _filterConditionsBloc.add(AddCondition(
            property: property,
            value: value,
          ))
        : _filterConditionsBloc.add(RemoveCondition(
            property: property,
            value: value,
          ));
  }

  bool _isOptionActive(String property, String value) {
    return _filterConditionsBloc.isConditionActive(property, value);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      child: BlocBuilder<FilterConditionsBloc, FilterConditionsState>(
        bloc: _filterConditionsBloc,
        builder: (_, state) {
          if (state is ConditionsInitialized) {
            // This could be further optimized by removing
            // the `FilterConditionGroup` all together and conditionally
            // rendering title or option rows.
            return ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: state.availableConditions.length,
              itemBuilder: (_, index) {
                final condition =
                    state.availableConditions.entries.elementAt(index);
                return FilterConditionGroup(
                  condition: condition,
                  isOptionActive: _isOptionActive,
                  updateCondition: _updateCondition,
                );
              },
            );
          }

          return CircularProgressIndicator();
        },
      ),
    );
  }
}
