// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bond_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BondDetailModel _$BondDetailModelFromJson(Map<String, dynamic> json) =>
    _BondDetailModel(
      logo: json['logo'] as String,
      companyName: json['companyName'] as String,
      description: json['description'] as String,
      isin: json['isin'] as String,
      status: json['status'] as String,
      prosAndCons: ProsAndConsModel.fromJson(
        json['prosAndCons'] as Map<String, dynamic>,
      ),
      financials: FinancialsModel.fromJson(
        json['financials'] as Map<String, dynamic>,
      ),
      issuerDetails: IssuerDetailsModel.fromJson(
        json['issuerDetails'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$BondDetailModelToJson(_BondDetailModel instance) =>
    <String, dynamic>{
      'logo': instance.logo,
      'companyName': instance.companyName,
      'description': instance.description,
      'isin': instance.isin,
      'status': instance.status,
      'prosAndCons': instance.prosAndCons,
      'financials': instance.financials,
      'issuerDetails': instance.issuerDetails,
    };

_ProsAndConsModel _$ProsAndConsModelFromJson(Map<String, dynamic> json) =>
    _ProsAndConsModel(
      pros: (json['pros'] as List<dynamic>).map((e) => e as String).toList(),
      cons: (json['cons'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ProsAndConsModelToJson(_ProsAndConsModel instance) =>
    <String, dynamic>{'pros': instance.pros, 'cons': instance.cons};

_FinancialItemModel _$FinancialItemModelFromJson(Map<String, dynamic> json) =>
    _FinancialItemModel(
      month: json['month'] as String,
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$FinancialItemModelToJson(_FinancialItemModel instance) =>
    <String, dynamic>{'month': instance.month, 'value': instance.value};

_FinancialsModel _$FinancialsModelFromJson(
  Map<String, dynamic> json,
) => _FinancialsModel(
  ebitda:
      (json['ebitda'] as List<dynamic>)
          .map((e) => FinancialItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
  revenue:
      (json['revenue'] as List<dynamic>)
          .map((e) => FinancialItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$FinancialsModelToJson(_FinancialsModel instance) =>
    <String, dynamic>{'ebitda': instance.ebitda, 'revenue': instance.revenue};

_IssuerDetailsModel _$IssuerDetailsModelFromJson(Map<String, dynamic> json) =>
    _IssuerDetailsModel(
      issuerName: json['issuerName'] as String,
      typeOfIssuer: json['typeOfIssuer'] as String,
      sector: json['sector'] as String,
      industry: json['industry'] as String,
      issuerNature: json['issuerNature'] as String,
      cin: json['cin'] as String,
      leadManager: json['leadManager'] as String,
      registrar: json['registrar'] as String,
      debentureTrustee: json['debentureTrustee'] as String,
    );

Map<String, dynamic> _$IssuerDetailsModelToJson(_IssuerDetailsModel instance) =>
    <String, dynamic>{
      'issuerName': instance.issuerName,
      'typeOfIssuer': instance.typeOfIssuer,
      'sector': instance.sector,
      'industry': instance.industry,
      'issuerNature': instance.issuerNature,
      'cin': instance.cin,
      'leadManager': instance.leadManager,
      'registrar': instance.registrar,
      'debentureTrustee': instance.debentureTrustee,
    };
