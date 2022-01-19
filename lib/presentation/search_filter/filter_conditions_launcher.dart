import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_list_manager/flutter_bloc_list_manager.dart';
import 'package:shamagri_latest_flutter_version/presentation/search_filter/filter_conditions_sheet.dart';

class FilterConditionsLauncher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.filter_list),
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (_) => FilterConditionsSheet(
            filterConditionsBloc: context.watch<FilterConditionsBloc>(),
          ),
          elevation: 1,
        );
      },
    );
  }
}
