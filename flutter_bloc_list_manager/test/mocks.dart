import 'package:bloc/bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:equatable/equatable.dart';

import 'package:flutter_bloc_list_manager/flutter_bloc_list_manager.dart';

class MockSourceBloc extends MockBloc<MockSourceBlocEvent, MockSourceBlocState>
    implements Bloc<MockSourceBlocEvent, MockSourceBlocState> {}

class MockSourceBlocEvent {}

abstract class MockSourceBlocState extends Equatable {
  const MockSourceBlocState();
}

class MockSourceBlocNoItems extends MockSourceBlocState {
  const MockSourceBlocNoItems();

  @override
  List<Object> get props => ['No Items'];
}

class MockItemClass extends Equatable implements ItemClassWithAccessor {
  final String id;
  final String name;
  final String? extra;
  final String? common;
  final bool? conditional;

  const MockItemClass({
    required this.id,
    required this.name,
    this.extra,
    this.common,
    this.conditional,
  });

  dynamic operator [](String prop) {
    switch (prop) {
      case 'id':
        return id;
      case 'name':
        return name;
      case 'extra':
        return extra;
      case 'common':
        return common;
      case 'conditional':
        return conditional;
      default:
        throw ArgumentError(
          'Property `$prop` does not exist on PlantVarietyIndex.',
        );
    }
  }

  @override
  List<Object?> get props => [id, name, extra, common, conditional];
}

class MockSourceBlocClassItems extends MockSourceBlocState
    implements ItemSourceState<MockItemClass> {
  final List<MockItemClass> items;

  const MockSourceBlocClassItems(this.items);

  @override
  List<Object> get props => [items];
}
