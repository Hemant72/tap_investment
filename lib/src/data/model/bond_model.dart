import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tap_investment/src/domain/entities/bond.dart';

part 'bond_model.freezed.dart';
part 'bond_model.g.dart';

@freezed
abstract class BondModel with _$BondModel {
  const factory BondModel({
    required String logo,
    required String isin,
    required String rating,
    required String companyName,
    required List<String> tags,
  }) = _BondModel;

  factory BondModel.fromJson(Map<String, dynamic> json) =>
      _$BondModelFromJson(json);
}

extension BondModelX on BondModel {
  Bond toDomain() {
    return Bond(
      logo: logo,
      isin: isin,
      rating: rating,
      companyName: companyName,
      tags: tags,
    );
  }
}
