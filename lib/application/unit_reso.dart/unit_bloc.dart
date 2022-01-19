import 'dart:async';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:shamagri_latest_flutter_version/domain/unit_reso/i_unit_repository.dart';
import 'package:shamagri_latest_flutter_version/domain/unit_reso/measuremnt.dart';
import 'package:shamagri_latest_flutter_version/domain/unit_reso/measuremnt_failure.dart';
import 'package:shamagri_latest_flutter_version/domain/unit_reso/value_objects.dart';

part 'unit_event.dart';
part 'unit_state.dart';
part 'unit_bloc.freezed.dart';

@injectable
class UnitBloc extends Bloc<UnitEvent, UnitState> {
  final IUnitRepository _unitRepository;

  UnitBloc(this._unitRepository) : super(UnitState.initial());

  @override
  Stream<UnitState> mapEventToState(
    UnitEvent event,
  ) async* {
    yield* event.map(initialized: (e) async* {
      yield e.initialUnitOption.fold(
        () => state,
        (initialUnit) => state.copyWith(
          unit: initialUnit,
          isEditing: true,
        ),
      );
    }, unitChanged: (e) async* {
      yield state.copyWith(
        unit: state.unit.copyWith(title: UnitBody(e.bodyStr)),
        saveFailureOrSuccessOption: none(),
      );
    },

        /*  colorChanged: (e) async* {
        yield state.copyWith(
          unit: state.unit.copyWith(color: unitColor(e.color)),
          saveFailureOrSuccessOption: none(),
        );
      },
     // todosChanged: (e) async* {
        yield state.copyWith(
          unit: state.unit.copyWith(
            //todos: List3(e.todos.map((primitive) => primitive.toDomain())),
          ),
          saveFailureOrSuccessOption: none(),
        );
      }, */
        saved: (e) async* {
      Either<UnitFailure, Measuremnt>? failureOrSuccess;

      yield state.copyWith(
        isSaving: true,
        saveFailureOrSuccessOption: none(),
      );

      if (state.unit.failureOption.isNone()) {
        failureOrSuccess = state.isEditing
            ? await _unitRepository.update(state.unit)
            : await _unitRepository.create(state.unit);
      }

      yield state.copyWith(
        isSaving: false,
        showErrorMessages: true,
        saveFailureOrSuccessOption: optionOf(failureOrSuccess),
      );
    }, showsInputForEdit: (e) async* {
      yield state.copyWith(
        unit: state.unit.copyWith(isEditing: e.isEditing),
        isEditing: e.isEditing,
        saveFailureOrSuccessOption: none(),
      );
    });
  }
}
