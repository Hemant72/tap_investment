part of 'bonds_list_bloc.dart';

@freezed
class BondsListEvent with _$BondsListEvent {
  const factory BondsListEvent.fetchBonds() = FetchBonds;
  const factory BondsListEvent.searchBonds(String query) = SearchBonds;
}
