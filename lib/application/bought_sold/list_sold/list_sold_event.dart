part of 'list_sold_bloc.dart';

@freezed
abstract class ListSoldEvent with _$ListSoldEvent {
  const factory ListSoldEvent.watchFirstTen() = _WatchFirstTen;
  const factory ListSoldEvent.watchAfterTen() = _WatchAfterTen;
  const factory ListSoldEvent.listSoldReceived(
      Either<ListSoldFailure, List<ListSold>> failureOrListSold,
      {bool afterTenCountIsZeroToNine,
      bool firstTenCountIsZero}) = _ListSoldReceived;
}
