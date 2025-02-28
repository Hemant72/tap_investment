import 'package:freezed_annotation/freezed_annotation.dart';

part 'bond_detail.freezed.dart';

@freezed
abstract class BondDetail with _$BondDetail {
  const factory BondDetail({
    required String logo,
    required String companyName,
    required String description,
    required String isin,
    required String status,
    required ProsAndCons prosAndCons,
    required Financials financials,
    required IssuerDetails issuerDetails,
  }) = _BondDetail;
}

@freezed
abstract class ProsAndCons with _$ProsAndCons {
  const factory ProsAndCons({
    required List<String> pros,
    required List<String> cons,
  }) = _ProsAndCons;
}

@freezed
abstract class FinancialItem with _$FinancialItem {
  const factory FinancialItem({required String month, required double value}) =
      _FinancialItem;
}

@freezed
abstract class Financials with _$Financials {
  const factory Financials({
    required List<FinancialItem> ebitda,
    required List<FinancialItem> revenue,
  }) = _Financials;
}

@freezed
abstract class IssuerDetails with _$IssuerDetails {
  const factory IssuerDetails({
    required String issuerName,
    required String typeOfIssuer,
    required String sector,
    required String industry,
    required String issuerNature,
    required String cin,
    required String leadManager,
    required String registrar,
    required String debentureTrustee,
  }) = _IssuerDetails;
}
