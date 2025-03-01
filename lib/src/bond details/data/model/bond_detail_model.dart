import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tap_investment/src/bond%20details/domain/entities/bond_detail.dart';

part 'bond_detail_model.freezed.dart';
part 'bond_detail_model.g.dart';

@freezed
abstract class BondDetailModel with _$BondDetailModel {
  const factory BondDetailModel({
    required String logo,
    required String companyName,
    required String description,
    required String isin,
    required String status,
    required ProsAndConsModel prosAndCons,
    required FinancialsModel financials,
    required IssuerDetailsModel issuerDetails,
  }) = _BondDetailModel;

  factory BondDetailModel.fromJson(Map<String, dynamic> json) =>
      _$BondDetailModelFromJson(json);
}

@freezed
abstract class ProsAndConsModel with _$ProsAndConsModel {
  const factory ProsAndConsModel({
    required List<String> pros,
    required List<String> cons,
  }) = _ProsAndConsModel;

  factory ProsAndConsModel.fromJson(Map<String, dynamic> json) =>
      _$ProsAndConsModelFromJson(json);
}

@freezed
abstract class FinancialItemModel with _$FinancialItemModel {
  const factory FinancialItemModel({
    required String month,
    required double value,
  }) = _FinancialItemModel;

  factory FinancialItemModel.fromJson(Map<String, dynamic> json) =>
      _$FinancialItemModelFromJson(json);
}

@freezed
abstract class FinancialsModel with _$FinancialsModel {
  const factory FinancialsModel({
    required List<FinancialItemModel> ebitda,
    required List<FinancialItemModel> revenue,
  }) = _FinancialsModel;

  factory FinancialsModel.fromJson(Map<String, dynamic> json) =>
      _$FinancialsModelFromJson(json);
}

@freezed
abstract class IssuerDetailsModel with _$IssuerDetailsModel {
  const factory IssuerDetailsModel({
    required String issuerName,
    required String typeOfIssuer,
    required String sector,
    required String industry,
    required String issuerNature,
    required String cin,
    required String leadManager,
    required String registrar,
    required String debentureTrustee,
  }) = _IssuerDetailsModel;

  factory IssuerDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$IssuerDetailsModelFromJson(json);
}

extension BondDetailModelX on BondDetailModel {
  BondDetail toDomain() {
    return BondDetail(
      logo: logo,
      companyName: companyName,
      description: description,
      isin: isin,
      status: status,
      prosAndCons: prosAndCons.toDomain(),
      financials: financials.toDomain(),
      issuerDetails: issuerDetails.toDomain(),
    );
  }
}

extension ProsAndConsModelX on ProsAndConsModel {
  ProsAndCons toDomain() {
    return ProsAndCons(pros: pros, cons: cons);
  }
}

extension FinancialItemModelX on FinancialItemModel {
  FinancialItem toDomain() {
    return FinancialItem(month: month, value: value);
  }
}

extension FinancialsModelX on FinancialsModel {
  Financials toDomain() {
    return Financials(
      ebitda: ebitda.map((e) => e.toDomain()).toList(),
      revenue: revenue.map((e) => e.toDomain()).toList(),
    );
  }
}

extension IssuerDetailsModelX on IssuerDetailsModel {
  IssuerDetails toDomain() {
    return IssuerDetails(
      issuerName: issuerName,
      typeOfIssuer: typeOfIssuer,
      sector: sector,
      industry: industry,
      issuerNature: issuerNature,
      cin: cin,
      leadManager: leadManager,
      registrar: registrar,
      debentureTrustee: debentureTrustee,
    );
  }
}
