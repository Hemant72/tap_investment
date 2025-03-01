part of 'bonds_list_bloc.dart';

@freezed
class BondsListState with _$BondsListState {
  const factory BondsListState.initial() = Initial;
  const factory BondsListState.loading() = Loading;
  const factory BondsListState.loaded(
    List<Bond> bonds,
    List<Bond> filteredBonds,
    String searchQuery,
  ) = Loaded;
  const factory BondsListState.error(String message) = Error;
}
