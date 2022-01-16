part of 'list_bought_bloc.dart';

@freezed
abstract class ListBoughtState with _$ListBoughtState {
  /*  const factory ListBoughtState({@required num countOfAfterTen}) =
      _ListBoughtState; */
  const factory ListBoughtState.initial() = _Initial;
  const factory ListBoughtState.loadInProgress() = _LoadInProgress;
  const factory ListBoughtState.loadSuccess(List<ListBought> listBought,
      {watchAfterTenCountIsZero, watchFirstTenCountIsZero}) = _LoadSuccess;
  const factory ListBoughtState.loadFailure(
      ListBoughtFailure listBoughtFailure) = _LoadFailure;
}
