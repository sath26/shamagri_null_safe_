part of 'list_sold_bloc.dart';

@freezed
abstract class ListSoldState with _$ListSoldState {
  const factory ListSoldState.initial() = _Initial;
  const factory ListSoldState.loadInProgress() = _LoadInProgress;
  const factory ListSoldState.loadSuccess(List<ListSold> listSold,
      {bool watchFirstTenCountIsZero,
      bool watchAfterTenCountIsZeroToNine}) = _LoadSuccess;
  const factory ListSoldState.loadFailure(ListSoldFailure listSoldFailure) =
      _LoadFailure;
}
