part of 'list_bought_bloc.dart';

@freezed
abstract class ListBoughtEvent with _$ListBoughtEvent {
  const factory ListBoughtEvent.watchFirstTen() = _WatchFirstTen;
  const factory ListBoughtEvent.watchAfterTen() = _WatchAfterTen;
  const factory ListBoughtEvent.listBoughtReceived(
      Either<ListBoughtFailure, List<ListBought>>? failureOrListBought,
      {bool? afterTenCountIsZero,
      bool? firstTenCountIsZero}) = _ListBoughtReceived;
}
