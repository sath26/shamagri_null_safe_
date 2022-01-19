import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc_list_manager/flutter_bloc_list_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:shamagri_latest_flutter_version/domain/unit_reso/i_unit_repository.dart';
import 'package:shamagri_latest_flutter_version/domain/unit_reso/measuremnt.dart';
import 'package:shamagri_latest_flutter_version/domain/unit_reso/measuremnt_failure.dart';
import 'package:shamagri_latest_flutter_version/infrastructure/unit_reso/unit_dtos.dart';

part 'unit_watcher_event.dart';
part 'unit_watcher_state.dart';
part 'unit_watcher_bloc.freezed.dart';

@injectable
class UnitWatcherBloc extends Bloc<UnitWatcherEvent, UnitWatcherState> {
  final IUnitRepository _unitRepository;

  UnitWatcherBloc(this._unitRepository)
      : super(const UnitWatcherState.initial());
  StreamSubscription<Either<UnitFailure, List<Measuremnt>>>?
      _unitStreamSubscription;
  @override
  Stream<UnitWatcherState> mapEventToState(
    UnitWatcherEvent event,
  ) async* {
    //
    yield* event.map(
      started: (e) async* {
        yield const UnitWatcherState.loadInProgress();
        await _unitStreamSubscription?.cancel();
        _unitStreamSubscription = _unitRepository.watchAll().listen(
              (failureOrUnit) =>
                  add(UnitWatcherEvent.unitsReceived(failureOrUnit)),
            );
      },
      unitsReceived: (e) async* {
        yield e.failureOrUnit.fold(
          (f) => UnitWatcherState.loadFailure(f),
          (units) => UnitWatcherState.loadSuccess(units),
        );
      },
    );
  }
}
