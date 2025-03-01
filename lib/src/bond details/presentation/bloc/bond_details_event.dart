part of 'bond_details_bloc.dart';

@freezed
class BondDetailsEvent with _$BondDetailsEvent {
    const factory BondDetailsEvent.fetchBondDetail() = FetchBondDetail;

}