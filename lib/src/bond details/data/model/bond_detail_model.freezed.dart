// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bond_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BondDetailModel {

 String get logo; String get companyName; String get description; String get isin; String get status; ProsAndConsModel get prosAndCons; FinancialsModel get financials; IssuerDetailsModel get issuerDetails;
/// Create a copy of BondDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BondDetailModelCopyWith<BondDetailModel> get copyWith => _$BondDetailModelCopyWithImpl<BondDetailModel>(this as BondDetailModel, _$identity);

  /// Serializes this BondDetailModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BondDetailModel&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.description, description) || other.description == description)&&(identical(other.isin, isin) || other.isin == isin)&&(identical(other.status, status) || other.status == status)&&(identical(other.prosAndCons, prosAndCons) || other.prosAndCons == prosAndCons)&&(identical(other.financials, financials) || other.financials == financials)&&(identical(other.issuerDetails, issuerDetails) || other.issuerDetails == issuerDetails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,logo,companyName,description,isin,status,prosAndCons,financials,issuerDetails);

@override
String toString() {
  return 'BondDetailModel(logo: $logo, companyName: $companyName, description: $description, isin: $isin, status: $status, prosAndCons: $prosAndCons, financials: $financials, issuerDetails: $issuerDetails)';
}


}

/// @nodoc
abstract mixin class $BondDetailModelCopyWith<$Res>  {
  factory $BondDetailModelCopyWith(BondDetailModel value, $Res Function(BondDetailModel) _then) = _$BondDetailModelCopyWithImpl;
@useResult
$Res call({
 String logo, String companyName, String description, String isin, String status, ProsAndConsModel prosAndCons, FinancialsModel financials, IssuerDetailsModel issuerDetails
});


$ProsAndConsModelCopyWith<$Res> get prosAndCons;$FinancialsModelCopyWith<$Res> get financials;$IssuerDetailsModelCopyWith<$Res> get issuerDetails;

}
/// @nodoc
class _$BondDetailModelCopyWithImpl<$Res>
    implements $BondDetailModelCopyWith<$Res> {
  _$BondDetailModelCopyWithImpl(this._self, this._then);

  final BondDetailModel _self;
  final $Res Function(BondDetailModel) _then;

/// Create a copy of BondDetailModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? logo = null,Object? companyName = null,Object? description = null,Object? isin = null,Object? status = null,Object? prosAndCons = null,Object? financials = null,Object? issuerDetails = null,}) {
  return _then(_self.copyWith(
logo: null == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,isin: null == isin ? _self.isin : isin // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,prosAndCons: null == prosAndCons ? _self.prosAndCons : prosAndCons // ignore: cast_nullable_to_non_nullable
as ProsAndConsModel,financials: null == financials ? _self.financials : financials // ignore: cast_nullable_to_non_nullable
as FinancialsModel,issuerDetails: null == issuerDetails ? _self.issuerDetails : issuerDetails // ignore: cast_nullable_to_non_nullable
as IssuerDetailsModel,
  ));
}
/// Create a copy of BondDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProsAndConsModelCopyWith<$Res> get prosAndCons {
  
  return $ProsAndConsModelCopyWith<$Res>(_self.prosAndCons, (value) {
    return _then(_self.copyWith(prosAndCons: value));
  });
}/// Create a copy of BondDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinancialsModelCopyWith<$Res> get financials {
  
  return $FinancialsModelCopyWith<$Res>(_self.financials, (value) {
    return _then(_self.copyWith(financials: value));
  });
}/// Create a copy of BondDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IssuerDetailsModelCopyWith<$Res> get issuerDetails {
  
  return $IssuerDetailsModelCopyWith<$Res>(_self.issuerDetails, (value) {
    return _then(_self.copyWith(issuerDetails: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _BondDetailModel implements BondDetailModel {
  const _BondDetailModel({required this.logo, required this.companyName, required this.description, required this.isin, required this.status, required this.prosAndCons, required this.financials, required this.issuerDetails});
  factory _BondDetailModel.fromJson(Map<String, dynamic> json) => _$BondDetailModelFromJson(json);

@override final  String logo;
@override final  String companyName;
@override final  String description;
@override final  String isin;
@override final  String status;
@override final  ProsAndConsModel prosAndCons;
@override final  FinancialsModel financials;
@override final  IssuerDetailsModel issuerDetails;

/// Create a copy of BondDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BondDetailModelCopyWith<_BondDetailModel> get copyWith => __$BondDetailModelCopyWithImpl<_BondDetailModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BondDetailModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BondDetailModel&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.description, description) || other.description == description)&&(identical(other.isin, isin) || other.isin == isin)&&(identical(other.status, status) || other.status == status)&&(identical(other.prosAndCons, prosAndCons) || other.prosAndCons == prosAndCons)&&(identical(other.financials, financials) || other.financials == financials)&&(identical(other.issuerDetails, issuerDetails) || other.issuerDetails == issuerDetails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,logo,companyName,description,isin,status,prosAndCons,financials,issuerDetails);

@override
String toString() {
  return 'BondDetailModel(logo: $logo, companyName: $companyName, description: $description, isin: $isin, status: $status, prosAndCons: $prosAndCons, financials: $financials, issuerDetails: $issuerDetails)';
}


}

/// @nodoc
abstract mixin class _$BondDetailModelCopyWith<$Res> implements $BondDetailModelCopyWith<$Res> {
  factory _$BondDetailModelCopyWith(_BondDetailModel value, $Res Function(_BondDetailModel) _then) = __$BondDetailModelCopyWithImpl;
@override @useResult
$Res call({
 String logo, String companyName, String description, String isin, String status, ProsAndConsModel prosAndCons, FinancialsModel financials, IssuerDetailsModel issuerDetails
});


@override $ProsAndConsModelCopyWith<$Res> get prosAndCons;@override $FinancialsModelCopyWith<$Res> get financials;@override $IssuerDetailsModelCopyWith<$Res> get issuerDetails;

}
/// @nodoc
class __$BondDetailModelCopyWithImpl<$Res>
    implements _$BondDetailModelCopyWith<$Res> {
  __$BondDetailModelCopyWithImpl(this._self, this._then);

  final _BondDetailModel _self;
  final $Res Function(_BondDetailModel) _then;

/// Create a copy of BondDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? logo = null,Object? companyName = null,Object? description = null,Object? isin = null,Object? status = null,Object? prosAndCons = null,Object? financials = null,Object? issuerDetails = null,}) {
  return _then(_BondDetailModel(
logo: null == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,isin: null == isin ? _self.isin : isin // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,prosAndCons: null == prosAndCons ? _self.prosAndCons : prosAndCons // ignore: cast_nullable_to_non_nullable
as ProsAndConsModel,financials: null == financials ? _self.financials : financials // ignore: cast_nullable_to_non_nullable
as FinancialsModel,issuerDetails: null == issuerDetails ? _self.issuerDetails : issuerDetails // ignore: cast_nullable_to_non_nullable
as IssuerDetailsModel,
  ));
}

/// Create a copy of BondDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProsAndConsModelCopyWith<$Res> get prosAndCons {
  
  return $ProsAndConsModelCopyWith<$Res>(_self.prosAndCons, (value) {
    return _then(_self.copyWith(prosAndCons: value));
  });
}/// Create a copy of BondDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinancialsModelCopyWith<$Res> get financials {
  
  return $FinancialsModelCopyWith<$Res>(_self.financials, (value) {
    return _then(_self.copyWith(financials: value));
  });
}/// Create a copy of BondDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IssuerDetailsModelCopyWith<$Res> get issuerDetails {
  
  return $IssuerDetailsModelCopyWith<$Res>(_self.issuerDetails, (value) {
    return _then(_self.copyWith(issuerDetails: value));
  });
}
}


/// @nodoc
mixin _$ProsAndConsModel {

 List<String> get pros; List<String> get cons;
/// Create a copy of ProsAndConsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProsAndConsModelCopyWith<ProsAndConsModel> get copyWith => _$ProsAndConsModelCopyWithImpl<ProsAndConsModel>(this as ProsAndConsModel, _$identity);

  /// Serializes this ProsAndConsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProsAndConsModel&&const DeepCollectionEquality().equals(other.pros, pros)&&const DeepCollectionEquality().equals(other.cons, cons));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(pros),const DeepCollectionEquality().hash(cons));

@override
String toString() {
  return 'ProsAndConsModel(pros: $pros, cons: $cons)';
}


}

/// @nodoc
abstract mixin class $ProsAndConsModelCopyWith<$Res>  {
  factory $ProsAndConsModelCopyWith(ProsAndConsModel value, $Res Function(ProsAndConsModel) _then) = _$ProsAndConsModelCopyWithImpl;
@useResult
$Res call({
 List<String> pros, List<String> cons
});




}
/// @nodoc
class _$ProsAndConsModelCopyWithImpl<$Res>
    implements $ProsAndConsModelCopyWith<$Res> {
  _$ProsAndConsModelCopyWithImpl(this._self, this._then);

  final ProsAndConsModel _self;
  final $Res Function(ProsAndConsModel) _then;

/// Create a copy of ProsAndConsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pros = null,Object? cons = null,}) {
  return _then(_self.copyWith(
pros: null == pros ? _self.pros : pros // ignore: cast_nullable_to_non_nullable
as List<String>,cons: null == cons ? _self.cons : cons // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ProsAndConsModel implements ProsAndConsModel {
  const _ProsAndConsModel({required final  List<String> pros, required final  List<String> cons}): _pros = pros,_cons = cons;
  factory _ProsAndConsModel.fromJson(Map<String, dynamic> json) => _$ProsAndConsModelFromJson(json);

 final  List<String> _pros;
@override List<String> get pros {
  if (_pros is EqualUnmodifiableListView) return _pros;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pros);
}

 final  List<String> _cons;
@override List<String> get cons {
  if (_cons is EqualUnmodifiableListView) return _cons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cons);
}


/// Create a copy of ProsAndConsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProsAndConsModelCopyWith<_ProsAndConsModel> get copyWith => __$ProsAndConsModelCopyWithImpl<_ProsAndConsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProsAndConsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProsAndConsModel&&const DeepCollectionEquality().equals(other._pros, _pros)&&const DeepCollectionEquality().equals(other._cons, _cons));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_pros),const DeepCollectionEquality().hash(_cons));

@override
String toString() {
  return 'ProsAndConsModel(pros: $pros, cons: $cons)';
}


}

/// @nodoc
abstract mixin class _$ProsAndConsModelCopyWith<$Res> implements $ProsAndConsModelCopyWith<$Res> {
  factory _$ProsAndConsModelCopyWith(_ProsAndConsModel value, $Res Function(_ProsAndConsModel) _then) = __$ProsAndConsModelCopyWithImpl;
@override @useResult
$Res call({
 List<String> pros, List<String> cons
});




}
/// @nodoc
class __$ProsAndConsModelCopyWithImpl<$Res>
    implements _$ProsAndConsModelCopyWith<$Res> {
  __$ProsAndConsModelCopyWithImpl(this._self, this._then);

  final _ProsAndConsModel _self;
  final $Res Function(_ProsAndConsModel) _then;

/// Create a copy of ProsAndConsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pros = null,Object? cons = null,}) {
  return _then(_ProsAndConsModel(
pros: null == pros ? _self._pros : pros // ignore: cast_nullable_to_non_nullable
as List<String>,cons: null == cons ? _self._cons : cons // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$FinancialItemModel {

 String get month; double get value;
/// Create a copy of FinancialItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinancialItemModelCopyWith<FinancialItemModel> get copyWith => _$FinancialItemModelCopyWithImpl<FinancialItemModel>(this as FinancialItemModel, _$identity);

  /// Serializes this FinancialItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinancialItemModel&&(identical(other.month, month) || other.month == month)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,month,value);

@override
String toString() {
  return 'FinancialItemModel(month: $month, value: $value)';
}


}

/// @nodoc
abstract mixin class $FinancialItemModelCopyWith<$Res>  {
  factory $FinancialItemModelCopyWith(FinancialItemModel value, $Res Function(FinancialItemModel) _then) = _$FinancialItemModelCopyWithImpl;
@useResult
$Res call({
 String month, double value
});




}
/// @nodoc
class _$FinancialItemModelCopyWithImpl<$Res>
    implements $FinancialItemModelCopyWith<$Res> {
  _$FinancialItemModelCopyWithImpl(this._self, this._then);

  final FinancialItemModel _self;
  final $Res Function(FinancialItemModel) _then;

/// Create a copy of FinancialItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? month = null,Object? value = null,}) {
  return _then(_self.copyWith(
month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _FinancialItemModel implements FinancialItemModel {
  const _FinancialItemModel({required this.month, required this.value});
  factory _FinancialItemModel.fromJson(Map<String, dynamic> json) => _$FinancialItemModelFromJson(json);

@override final  String month;
@override final  double value;

/// Create a copy of FinancialItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinancialItemModelCopyWith<_FinancialItemModel> get copyWith => __$FinancialItemModelCopyWithImpl<_FinancialItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FinancialItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinancialItemModel&&(identical(other.month, month) || other.month == month)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,month,value);

@override
String toString() {
  return 'FinancialItemModel(month: $month, value: $value)';
}


}

/// @nodoc
abstract mixin class _$FinancialItemModelCopyWith<$Res> implements $FinancialItemModelCopyWith<$Res> {
  factory _$FinancialItemModelCopyWith(_FinancialItemModel value, $Res Function(_FinancialItemModel) _then) = __$FinancialItemModelCopyWithImpl;
@override @useResult
$Res call({
 String month, double value
});




}
/// @nodoc
class __$FinancialItemModelCopyWithImpl<$Res>
    implements _$FinancialItemModelCopyWith<$Res> {
  __$FinancialItemModelCopyWithImpl(this._self, this._then);

  final _FinancialItemModel _self;
  final $Res Function(_FinancialItemModel) _then;

/// Create a copy of FinancialItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? month = null,Object? value = null,}) {
  return _then(_FinancialItemModel(
month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$FinancialsModel {

 List<FinancialItemModel> get ebitda; List<FinancialItemModel> get revenue;
/// Create a copy of FinancialsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinancialsModelCopyWith<FinancialsModel> get copyWith => _$FinancialsModelCopyWithImpl<FinancialsModel>(this as FinancialsModel, _$identity);

  /// Serializes this FinancialsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinancialsModel&&const DeepCollectionEquality().equals(other.ebitda, ebitda)&&const DeepCollectionEquality().equals(other.revenue, revenue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(ebitda),const DeepCollectionEquality().hash(revenue));

@override
String toString() {
  return 'FinancialsModel(ebitda: $ebitda, revenue: $revenue)';
}


}

/// @nodoc
abstract mixin class $FinancialsModelCopyWith<$Res>  {
  factory $FinancialsModelCopyWith(FinancialsModel value, $Res Function(FinancialsModel) _then) = _$FinancialsModelCopyWithImpl;
@useResult
$Res call({
 List<FinancialItemModel> ebitda, List<FinancialItemModel> revenue
});




}
/// @nodoc
class _$FinancialsModelCopyWithImpl<$Res>
    implements $FinancialsModelCopyWith<$Res> {
  _$FinancialsModelCopyWithImpl(this._self, this._then);

  final FinancialsModel _self;
  final $Res Function(FinancialsModel) _then;

/// Create a copy of FinancialsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ebitda = null,Object? revenue = null,}) {
  return _then(_self.copyWith(
ebitda: null == ebitda ? _self.ebitda : ebitda // ignore: cast_nullable_to_non_nullable
as List<FinancialItemModel>,revenue: null == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as List<FinancialItemModel>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _FinancialsModel implements FinancialsModel {
  const _FinancialsModel({required final  List<FinancialItemModel> ebitda, required final  List<FinancialItemModel> revenue}): _ebitda = ebitda,_revenue = revenue;
  factory _FinancialsModel.fromJson(Map<String, dynamic> json) => _$FinancialsModelFromJson(json);

 final  List<FinancialItemModel> _ebitda;
@override List<FinancialItemModel> get ebitda {
  if (_ebitda is EqualUnmodifiableListView) return _ebitda;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ebitda);
}

 final  List<FinancialItemModel> _revenue;
@override List<FinancialItemModel> get revenue {
  if (_revenue is EqualUnmodifiableListView) return _revenue;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_revenue);
}


/// Create a copy of FinancialsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinancialsModelCopyWith<_FinancialsModel> get copyWith => __$FinancialsModelCopyWithImpl<_FinancialsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FinancialsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinancialsModel&&const DeepCollectionEquality().equals(other._ebitda, _ebitda)&&const DeepCollectionEquality().equals(other._revenue, _revenue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_ebitda),const DeepCollectionEquality().hash(_revenue));

@override
String toString() {
  return 'FinancialsModel(ebitda: $ebitda, revenue: $revenue)';
}


}

/// @nodoc
abstract mixin class _$FinancialsModelCopyWith<$Res> implements $FinancialsModelCopyWith<$Res> {
  factory _$FinancialsModelCopyWith(_FinancialsModel value, $Res Function(_FinancialsModel) _then) = __$FinancialsModelCopyWithImpl;
@override @useResult
$Res call({
 List<FinancialItemModel> ebitda, List<FinancialItemModel> revenue
});




}
/// @nodoc
class __$FinancialsModelCopyWithImpl<$Res>
    implements _$FinancialsModelCopyWith<$Res> {
  __$FinancialsModelCopyWithImpl(this._self, this._then);

  final _FinancialsModel _self;
  final $Res Function(_FinancialsModel) _then;

/// Create a copy of FinancialsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ebitda = null,Object? revenue = null,}) {
  return _then(_FinancialsModel(
ebitda: null == ebitda ? _self._ebitda : ebitda // ignore: cast_nullable_to_non_nullable
as List<FinancialItemModel>,revenue: null == revenue ? _self._revenue : revenue // ignore: cast_nullable_to_non_nullable
as List<FinancialItemModel>,
  ));
}


}


/// @nodoc
mixin _$IssuerDetailsModel {

 String get issuerName; String get typeOfIssuer; String get sector; String get industry; String get issuerNature; String get cin; String get leadManager; String get registrar; String get debentureTrustee;
/// Create a copy of IssuerDetailsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IssuerDetailsModelCopyWith<IssuerDetailsModel> get copyWith => _$IssuerDetailsModelCopyWithImpl<IssuerDetailsModel>(this as IssuerDetailsModel, _$identity);

  /// Serializes this IssuerDetailsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IssuerDetailsModel&&(identical(other.issuerName, issuerName) || other.issuerName == issuerName)&&(identical(other.typeOfIssuer, typeOfIssuer) || other.typeOfIssuer == typeOfIssuer)&&(identical(other.sector, sector) || other.sector == sector)&&(identical(other.industry, industry) || other.industry == industry)&&(identical(other.issuerNature, issuerNature) || other.issuerNature == issuerNature)&&(identical(other.cin, cin) || other.cin == cin)&&(identical(other.leadManager, leadManager) || other.leadManager == leadManager)&&(identical(other.registrar, registrar) || other.registrar == registrar)&&(identical(other.debentureTrustee, debentureTrustee) || other.debentureTrustee == debentureTrustee));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,issuerName,typeOfIssuer,sector,industry,issuerNature,cin,leadManager,registrar,debentureTrustee);

@override
String toString() {
  return 'IssuerDetailsModel(issuerName: $issuerName, typeOfIssuer: $typeOfIssuer, sector: $sector, industry: $industry, issuerNature: $issuerNature, cin: $cin, leadManager: $leadManager, registrar: $registrar, debentureTrustee: $debentureTrustee)';
}


}

/// @nodoc
abstract mixin class $IssuerDetailsModelCopyWith<$Res>  {
  factory $IssuerDetailsModelCopyWith(IssuerDetailsModel value, $Res Function(IssuerDetailsModel) _then) = _$IssuerDetailsModelCopyWithImpl;
@useResult
$Res call({
 String issuerName, String typeOfIssuer, String sector, String industry, String issuerNature, String cin, String leadManager, String registrar, String debentureTrustee
});




}
/// @nodoc
class _$IssuerDetailsModelCopyWithImpl<$Res>
    implements $IssuerDetailsModelCopyWith<$Res> {
  _$IssuerDetailsModelCopyWithImpl(this._self, this._then);

  final IssuerDetailsModel _self;
  final $Res Function(IssuerDetailsModel) _then;

/// Create a copy of IssuerDetailsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? issuerName = null,Object? typeOfIssuer = null,Object? sector = null,Object? industry = null,Object? issuerNature = null,Object? cin = null,Object? leadManager = null,Object? registrar = null,Object? debentureTrustee = null,}) {
  return _then(_self.copyWith(
issuerName: null == issuerName ? _self.issuerName : issuerName // ignore: cast_nullable_to_non_nullable
as String,typeOfIssuer: null == typeOfIssuer ? _self.typeOfIssuer : typeOfIssuer // ignore: cast_nullable_to_non_nullable
as String,sector: null == sector ? _self.sector : sector // ignore: cast_nullable_to_non_nullable
as String,industry: null == industry ? _self.industry : industry // ignore: cast_nullable_to_non_nullable
as String,issuerNature: null == issuerNature ? _self.issuerNature : issuerNature // ignore: cast_nullable_to_non_nullable
as String,cin: null == cin ? _self.cin : cin // ignore: cast_nullable_to_non_nullable
as String,leadManager: null == leadManager ? _self.leadManager : leadManager // ignore: cast_nullable_to_non_nullable
as String,registrar: null == registrar ? _self.registrar : registrar // ignore: cast_nullable_to_non_nullable
as String,debentureTrustee: null == debentureTrustee ? _self.debentureTrustee : debentureTrustee // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _IssuerDetailsModel implements IssuerDetailsModel {
  const _IssuerDetailsModel({required this.issuerName, required this.typeOfIssuer, required this.sector, required this.industry, required this.issuerNature, required this.cin, required this.leadManager, required this.registrar, required this.debentureTrustee});
  factory _IssuerDetailsModel.fromJson(Map<String, dynamic> json) => _$IssuerDetailsModelFromJson(json);

@override final  String issuerName;
@override final  String typeOfIssuer;
@override final  String sector;
@override final  String industry;
@override final  String issuerNature;
@override final  String cin;
@override final  String leadManager;
@override final  String registrar;
@override final  String debentureTrustee;

/// Create a copy of IssuerDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IssuerDetailsModelCopyWith<_IssuerDetailsModel> get copyWith => __$IssuerDetailsModelCopyWithImpl<_IssuerDetailsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IssuerDetailsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IssuerDetailsModel&&(identical(other.issuerName, issuerName) || other.issuerName == issuerName)&&(identical(other.typeOfIssuer, typeOfIssuer) || other.typeOfIssuer == typeOfIssuer)&&(identical(other.sector, sector) || other.sector == sector)&&(identical(other.industry, industry) || other.industry == industry)&&(identical(other.issuerNature, issuerNature) || other.issuerNature == issuerNature)&&(identical(other.cin, cin) || other.cin == cin)&&(identical(other.leadManager, leadManager) || other.leadManager == leadManager)&&(identical(other.registrar, registrar) || other.registrar == registrar)&&(identical(other.debentureTrustee, debentureTrustee) || other.debentureTrustee == debentureTrustee));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,issuerName,typeOfIssuer,sector,industry,issuerNature,cin,leadManager,registrar,debentureTrustee);

@override
String toString() {
  return 'IssuerDetailsModel(issuerName: $issuerName, typeOfIssuer: $typeOfIssuer, sector: $sector, industry: $industry, issuerNature: $issuerNature, cin: $cin, leadManager: $leadManager, registrar: $registrar, debentureTrustee: $debentureTrustee)';
}


}

/// @nodoc
abstract mixin class _$IssuerDetailsModelCopyWith<$Res> implements $IssuerDetailsModelCopyWith<$Res> {
  factory _$IssuerDetailsModelCopyWith(_IssuerDetailsModel value, $Res Function(_IssuerDetailsModel) _then) = __$IssuerDetailsModelCopyWithImpl;
@override @useResult
$Res call({
 String issuerName, String typeOfIssuer, String sector, String industry, String issuerNature, String cin, String leadManager, String registrar, String debentureTrustee
});




}
/// @nodoc
class __$IssuerDetailsModelCopyWithImpl<$Res>
    implements _$IssuerDetailsModelCopyWith<$Res> {
  __$IssuerDetailsModelCopyWithImpl(this._self, this._then);

  final _IssuerDetailsModel _self;
  final $Res Function(_IssuerDetailsModel) _then;

/// Create a copy of IssuerDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? issuerName = null,Object? typeOfIssuer = null,Object? sector = null,Object? industry = null,Object? issuerNature = null,Object? cin = null,Object? leadManager = null,Object? registrar = null,Object? debentureTrustee = null,}) {
  return _then(_IssuerDetailsModel(
issuerName: null == issuerName ? _self.issuerName : issuerName // ignore: cast_nullable_to_non_nullable
as String,typeOfIssuer: null == typeOfIssuer ? _self.typeOfIssuer : typeOfIssuer // ignore: cast_nullable_to_non_nullable
as String,sector: null == sector ? _self.sector : sector // ignore: cast_nullable_to_non_nullable
as String,industry: null == industry ? _self.industry : industry // ignore: cast_nullable_to_non_nullable
as String,issuerNature: null == issuerNature ? _self.issuerNature : issuerNature // ignore: cast_nullable_to_non_nullable
as String,cin: null == cin ? _self.cin : cin // ignore: cast_nullable_to_non_nullable
as String,leadManager: null == leadManager ? _self.leadManager : leadManager // ignore: cast_nullable_to_non_nullable
as String,registrar: null == registrar ? _self.registrar : registrar // ignore: cast_nullable_to_non_nullable
as String,debentureTrustee: null == debentureTrustee ? _self.debentureTrustee : debentureTrustee // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
