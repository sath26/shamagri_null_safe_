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

part 'unit_actor_event.dart';
part 'unit_actor_state.dart';
part 'unit_actor_bloc.freezed.dart';

@injectable
class UnitActorBloc extends Bloc<UnitActorEvent, UnitActorState> {
  final IUnitRepository _unitRepository;

  UnitActorBloc(this._unitRepository) : super(const UnitActorState.initial());

  @override
  Stream<UnitActorState> mapEventToState(
    UnitActorEvent event,
  ) async* {
    yield const UnitActorState.actionInProgress();
    final possibleFailure = await _unitRepository.delete(event.unit);
    yield possibleFailure.fold(
      (f) => UnitActorState.deleteFailure(f),
      (_) => const UnitActorState.deleteSuccess(),
    );
  }
}
