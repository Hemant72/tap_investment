part of 'bond_details_bloc.dart';

@freezed
class BondDetailsState with _$BondDetailsState {
  const factory BondDetailsState.initial() = Initial;
  const factory BondDetailsState.loading() = Loading;
  const factory BondDetailsState.loaded(BondDetail bondDetail) = Loaded;
  const factory BondDetailsState.error(String message) = Error;
}
