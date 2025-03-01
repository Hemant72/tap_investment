// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bond_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BondDetail {

 String get logo; String get companyName; String get description; String get isin; String get status; ProsAndCons get prosAndCons; Financials get financials; IssuerDetails get issuerDetails;
/// Create a copy of BondDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BondDetailCopyWith<BondDetail> get copyWith => _$BondDetailCopyWithImpl<BondDetail>(this as BondDetail, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BondDetail&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.description, description) || other.description == description)&&(identical(other.isin, isin) || other.isin == isin)&&(identical(other.status, status) || other.status == status)&&(identical(other.prosAndCons, prosAndCons) || other.prosAndCons == prosAndCons)&&(identical(other.financials, financials) || other.financials == financials)&&(identical(other.issuerDetails, issuerDetails) || other.issuerDetails == issuerDetails));
}


@override
int get hashCode => Object.hash(runtimeType,logo,companyName,description,isin,status,prosAndCons,financials,issuerDetails);

@override
String toString() {
  return 'BondDetail(logo: $logo, companyName: $companyName, description: $description, isin: $isin, status: $status, prosAndCons: $prosAndCons, financials: $financials, issuerDetails: $issuerDetails)';
}


}

/// @nodoc
abstract mixin class $BondDetailCopyWith<$Res>  {
  factory $BondDetailCopyWith(BondDetail value, $Res Function(BondDetail) _then) = _$BondDetailCopyWithImpl;
@useResult
$Res call({
 String logo, String companyName, String description, String isin, String status, ProsAndCons prosAndCons, Financials financials, IssuerDetails issuerDetails
});


$ProsAndConsCopyWith<$Res> get prosAndCons;$FinancialsCopyWith<$Res> get financials;$IssuerDetailsCopyWith<$Res> get issuerDetails;

}
/// @nodoc
class _$BondDetailCopyWithImpl<$Res>
    implements $BondDetailCopyWith<$Res> {
  _$BondDetailCopyWithImpl(this._self, this._then);

  final BondDetail _self;
  final $Res Function(BondDetail) _then;

/// Create a copy of BondDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? logo = null,Object? companyName = null,Object? description = null,Object? isin = null,Object? status = null,Object? prosAndCons = null,Object? financials = null,Object? issuerDetails = null,}) {
  return _then(_self.copyWith(
logo: null == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,isin: null == isin ? _self.isin : isin // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,prosAndCons: null == prosAndCons ? _self.prosAndCons : prosAndCons // ignore: cast_nullable_to_non_nullable
as ProsAndCons,financials: null == financials ? _self.financials : financials // ignore: cast_nullable_to_non_nullable
as Financials,issuerDetails: null == issuerDetails ? _self.issuerDetails : issuerDetails // ignore: cast_nullable_to_non_nullable
as IssuerDetails,
  ));
}
/// Create a copy of BondDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProsAndConsCopyWith<$Res> get prosAndCons {
  
  return $ProsAndConsCopyWith<$Res>(_self.prosAndCons, (value) {
    return _then(_self.copyWith(prosAndCons: value));
  });
}/// Create a copy of BondDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinancialsCopyWith<$Res> get financials {
  
  return $FinancialsCopyWith<$Res>(_self.financials, (value) {
    return _then(_self.copyWith(financials: value));
  });
}/// Create a copy of BondDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IssuerDetailsCopyWith<$Res> get issuerDetails {
  
  return $IssuerDetailsCopyWith<$Res>(_self.issuerDetails, (value) {
    return _then(_self.copyWith(issuerDetails: value));
  });
}
}


/// @nodoc


class _BondDetail implements BondDetail {
  const _BondDetail({required this.logo, required this.companyName, required this.description, required this.isin, required this.status, required this.prosAndCons, required this.financials, required this.issuerDetails});
  

@override final  String logo;
@override final  String companyName;
@override final  String description;
@override final  String isin;
@override final  String status;
@override final  ProsAndCons prosAndCons;
@override final  Financials financials;
@override final  IssuerDetails issuerDetails;

/// Create a copy of BondDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BondDetailCopyWith<_BondDetail> get copyWith => __$BondDetailCopyWithImpl<_BondDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BondDetail&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.description, description) || other.description == description)&&(identical(other.isin, isin) || other.isin == isin)&&(identical(other.status, status) || other.status == status)&&(identical(other.prosAndCons, prosAndCons) || other.prosAndCons == prosAndCons)&&(identical(other.financials, financials) || other.financials == financials)&&(identical(other.issuerDetails, issuerDetails) || other.issuerDetails == issuerDetails));
}


@override
int get hashCode => Object.hash(runtimeType,logo,companyName,description,isin,status,prosAndCons,financials,issuerDetails);

@override
String toString() {
  return 'BondDetail(logo: $logo, companyName: $companyName, description: $description, isin: $isin, status: $status, prosAndCons: $prosAndCons, financials: $financials, issuerDetails: $issuerDetails)';
}


}

/// @nodoc
abstract mixin class _$BondDetailCopyWith<$Res> implements $BondDetailCopyWith<$Res> {
  factory _$BondDetailCopyWith(_BondDetail value, $Res Function(_BondDetail) _then) = __$BondDetailCopyWithImpl;
@override @useResult
$Res call({
 String logo, String companyName, String description, String isin, String status, ProsAndCons prosAndCons, Financials financials, IssuerDetails issuerDetails
});


@override $ProsAndConsCopyWith<$Res> get prosAndCons;@override $FinancialsCopyWith<$Res> get financials;@override $IssuerDetailsCopyWith<$Res> get issuerDetails;

}
/// @nodoc
class __$BondDetailCopyWithImpl<$Res>
    implements _$BondDetailCopyWith<$Res> {
  __$BondDetailCopyWithImpl(this._self, this._then);

  final _BondDetail _self;
  final $Res Function(_BondDetail) _then;

/// Create a copy of BondDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? logo = null,Object? companyName = null,Object? description = null,Object? isin = null,Object? status = null,Object? prosAndCons = null,Object? financials = null,Object? issuerDetails = null,}) {
  return _then(_BondDetail(
logo: null == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,isin: null == isin ? _self.isin : isin // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,prosAndCons: null == prosAndCons ? _self.prosAndCons : prosAndCons // ignore: cast_nullable_to_non_nullable
as ProsAndCons,financials: null == financials ? _self.financials : financials // ignore: cast_nullable_to_non_nullable
as Financials,issuerDetails: null == issuerDetails ? _self.issuerDetails : issuerDetails // ignore: cast_nullable_to_non_nullable
as IssuerDetails,
  ));
}

/// Create a copy of BondDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProsAndConsCopyWith<$Res> get prosAndCons {
  
  return $ProsAndConsCopyWith<$Res>(_self.prosAndCons, (value) {
    return _then(_self.copyWith(prosAndCons: value));
  });
}/// Create a copy of BondDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinancialsCopyWith<$Res> get financials {
  
  return $FinancialsCopyWith<$Res>(_self.financials, (value) {
    return _then(_self.copyWith(financials: value));
  });
}/// Create a copy of BondDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IssuerDetailsCopyWith<$Res> get issuerDetails {
  
  return $IssuerDetailsCopyWith<$Res>(_self.issuerDetails, (value) {
    return _then(_self.copyWith(issuerDetails: value));
  });
}
}

/// @nodoc
mixin _$ProsAndCons {

 List<String> get pros; List<String> get cons;
/// Create a copy of ProsAndCons
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProsAndConsCopyWith<ProsAndCons> get copyWith => _$ProsAndConsCopyWithImpl<ProsAndCons>(this as ProsAndCons, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProsAndCons&&const DeepCollectionEquality().equals(other.pros, pros)&&const DeepCollectionEquality().equals(other.cons, cons));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(pros),const DeepCollectionEquality().hash(cons));

@override
String toString() {
  return 'ProsAndCons(pros: $pros, cons: $cons)';
}


}

/// @nodoc
abstract mixin class $ProsAndConsCopyWith<$Res>  {
  factory $ProsAndConsCopyWith(ProsAndCons value, $Res Function(ProsAndCons) _then) = _$ProsAndConsCopyWithImpl;
@useResult
$Res call({
 List<String> pros, List<String> cons
});




}
/// @nodoc
class _$ProsAndConsCopyWithImpl<$Res>
    implements $ProsAndConsCopyWith<$Res> {
  _$ProsAndConsCopyWithImpl(this._self, this._then);

  final ProsAndCons _self;
  final $Res Function(ProsAndCons) _then;

/// Create a copy of ProsAndCons
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


class _ProsAndCons implements ProsAndCons {
  const _ProsAndCons({required final  List<String> pros, required final  List<String> cons}): _pros = pros,_cons = cons;
  

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


/// Create a copy of ProsAndCons
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProsAndConsCopyWith<_ProsAndCons> get copyWith => __$ProsAndConsCopyWithImpl<_ProsAndCons>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProsAndCons&&const DeepCollectionEquality().equals(other._pros, _pros)&&const DeepCollectionEquality().equals(other._cons, _cons));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_pros),const DeepCollectionEquality().hash(_cons));

@override
String toString() {
  return 'ProsAndCons(pros: $pros, cons: $cons)';
}


}

/// @nodoc
abstract mixin class _$ProsAndConsCopyWith<$Res> implements $ProsAndConsCopyWith<$Res> {
  factory _$ProsAndConsCopyWith(_ProsAndCons value, $Res Function(_ProsAndCons) _then) = __$ProsAndConsCopyWithImpl;
@override @useResult
$Res call({
 List<String> pros, List<String> cons
});




}
/// @nodoc
class __$ProsAndConsCopyWithImpl<$Res>
    implements _$ProsAndConsCopyWith<$Res> {
  __$ProsAndConsCopyWithImpl(this._self, this._then);

  final _ProsAndCons _self;
  final $Res Function(_ProsAndCons) _then;

/// Create a copy of ProsAndCons
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pros = null,Object? cons = null,}) {
  return _then(_ProsAndCons(
pros: null == pros ? _self._pros : pros // ignore: cast_nullable_to_non_nullable
as List<String>,cons: null == cons ? _self._cons : cons // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc
mixin _$FinancialItem {

 String get month; double get value;
/// Create a copy of FinancialItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinancialItemCopyWith<FinancialItem> get copyWith => _$FinancialItemCopyWithImpl<FinancialItem>(this as FinancialItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinancialItem&&(identical(other.month, month) || other.month == month)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,month,value);

@override
String toString() {
  return 'FinancialItem(month: $month, value: $value)';
}


}

/// @nodoc
abstract mixin class $FinancialItemCopyWith<$Res>  {
  factory $FinancialItemCopyWith(FinancialItem value, $Res Function(FinancialItem) _then) = _$FinancialItemCopyWithImpl;
@useResult
$Res call({
 String month, double value
});




}
/// @nodoc
class _$FinancialItemCopyWithImpl<$Res>
    implements $FinancialItemCopyWith<$Res> {
  _$FinancialItemCopyWithImpl(this._self, this._then);

  final FinancialItem _self;
  final $Res Function(FinancialItem) _then;

/// Create a copy of FinancialItem
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


class _FinancialItem implements FinancialItem {
  const _FinancialItem({required this.month, required this.value});
  

@override final  String month;
@override final  double value;

/// Create a copy of FinancialItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinancialItemCopyWith<_FinancialItem> get copyWith => __$FinancialItemCopyWithImpl<_FinancialItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinancialItem&&(identical(other.month, month) || other.month == month)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,month,value);

@override
String toString() {
  return 'FinancialItem(month: $month, value: $value)';
}


}

/// @nodoc
abstract mixin class _$FinancialItemCopyWith<$Res> implements $FinancialItemCopyWith<$Res> {
  factory _$FinancialItemCopyWith(_FinancialItem value, $Res Function(_FinancialItem) _then) = __$FinancialItemCopyWithImpl;
@override @useResult
$Res call({
 String month, double value
});




}
/// @nodoc
class __$FinancialItemCopyWithImpl<$Res>
    implements _$FinancialItemCopyWith<$Res> {
  __$FinancialItemCopyWithImpl(this._self, this._then);

  final _FinancialItem _self;
  final $Res Function(_FinancialItem) _then;

/// Create a copy of FinancialItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? month = null,Object? value = null,}) {
  return _then(_FinancialItem(
month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
mixin _$Financials {

 List<FinancialItem> get ebitda; List<FinancialItem> get revenue;
/// Create a copy of Financials
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinancialsCopyWith<Financials> get copyWith => _$FinancialsCopyWithImpl<Financials>(this as Financials, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Financials&&const DeepCollectionEquality().equals(other.ebitda, ebitda)&&const DeepCollectionEquality().equals(other.revenue, revenue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(ebitda),const DeepCollectionEquality().hash(revenue));

@override
String toString() {
  return 'Financials(ebitda: $ebitda, revenue: $revenue)';
}


}

/// @nodoc
abstract mixin class $FinancialsCopyWith<$Res>  {
  factory $FinancialsCopyWith(Financials value, $Res Function(Financials) _then) = _$FinancialsCopyWithImpl;
@useResult
$Res call({
 List<FinancialItem> ebitda, List<FinancialItem> revenue
});




}
/// @nodoc
class _$FinancialsCopyWithImpl<$Res>
    implements $FinancialsCopyWith<$Res> {
  _$FinancialsCopyWithImpl(this._self, this._then);

  final Financials _self;
  final $Res Function(Financials) _then;

/// Create a copy of Financials
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ebitda = null,Object? revenue = null,}) {
  return _then(_self.copyWith(
ebitda: null == ebitda ? _self.ebitda : ebitda // ignore: cast_nullable_to_non_nullable
as List<FinancialItem>,revenue: null == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as List<FinancialItem>,
  ));
}

}


/// @nodoc


class _Financials implements Financials {
  const _Financials({required final  List<FinancialItem> ebitda, required final  List<FinancialItem> revenue}): _ebitda = ebitda,_revenue = revenue;
  

 final  List<FinancialItem> _ebitda;
@override List<FinancialItem> get ebitda {
  if (_ebitda is EqualUnmodifiableListView) return _ebitda;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ebitda);
}

 final  List<FinancialItem> _revenue;
@override List<FinancialItem> get revenue {
  if (_revenue is EqualUnmodifiableListView) return _revenue;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_revenue);
}


/// Create a copy of Financials
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinancialsCopyWith<_Financials> get copyWith => __$FinancialsCopyWithImpl<_Financials>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Financials&&const DeepCollectionEquality().equals(other._ebitda, _ebitda)&&const DeepCollectionEquality().equals(other._revenue, _revenue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_ebitda),const DeepCollectionEquality().hash(_revenue));

@override
String toString() {
  return 'Financials(ebitda: $ebitda, revenue: $revenue)';
}


}

/// @nodoc
abstract mixin class _$FinancialsCopyWith<$Res> implements $FinancialsCopyWith<$Res> {
  factory _$FinancialsCopyWith(_Financials value, $Res Function(_Financials) _then) = __$FinancialsCopyWithImpl;
@override @useResult
$Res call({
 List<FinancialItem> ebitda, List<FinancialItem> revenue
});




}
/// @nodoc
class __$FinancialsCopyWithImpl<$Res>
    implements _$FinancialsCopyWith<$Res> {
  __$FinancialsCopyWithImpl(this._self, this._then);

  final _Financials _self;
  final $Res Function(_Financials) _then;

/// Create a copy of Financials
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ebitda = null,Object? revenue = null,}) {
  return _then(_Financials(
ebitda: null == ebitda ? _self._ebitda : ebitda // ignore: cast_nullable_to_non_nullable
as List<FinancialItem>,revenue: null == revenue ? _self._revenue : revenue // ignore: cast_nullable_to_non_nullable
as List<FinancialItem>,
  ));
}


}

/// @nodoc
mixin _$IssuerDetails {

 String get issuerName; String get typeOfIssuer; String get sector; String get industry; String get issuerNature; String get cin; String get leadManager; String get registrar; String get debentureTrustee;
/// Create a copy of IssuerDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IssuerDetailsCopyWith<IssuerDetails> get copyWith => _$IssuerDetailsCopyWithImpl<IssuerDetails>(this as IssuerDetails, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IssuerDetails&&(identical(other.issuerName, issuerName) || other.issuerName == issuerName)&&(identical(other.typeOfIssuer, typeOfIssuer) || other.typeOfIssuer == typeOfIssuer)&&(identical(other.sector, sector) || other.sector == sector)&&(identical(other.industry, industry) || other.industry == industry)&&(identical(other.issuerNature, issuerNature) || other.issuerNature == issuerNature)&&(identical(other.cin, cin) || other.cin == cin)&&(identical(other.leadManager, leadManager) || other.leadManager == leadManager)&&(identical(other.registrar, registrar) || other.registrar == registrar)&&(identical(other.debentureTrustee, debentureTrustee) || other.debentureTrustee == debentureTrustee));
}


@override
int get hashCode => Object.hash(runtimeType,issuerName,typeOfIssuer,sector,industry,issuerNature,cin,leadManager,registrar,debentureTrustee);

@override
String toString() {
  return 'IssuerDetails(issuerName: $issuerName, typeOfIssuer: $typeOfIssuer, sector: $sector, industry: $industry, issuerNature: $issuerNature, cin: $cin, leadManager: $leadManager, registrar: $registrar, debentureTrustee: $debentureTrustee)';
}


}

/// @nodoc
abstract mixin class $IssuerDetailsCopyWith<$Res>  {
  factory $IssuerDetailsCopyWith(IssuerDetails value, $Res Function(IssuerDetails) _then) = _$IssuerDetailsCopyWithImpl;
@useResult
$Res call({
 String issuerName, String typeOfIssuer, String sector, String industry, String issuerNature, String cin, String leadManager, String registrar, String debentureTrustee
});




}
/// @nodoc
class _$IssuerDetailsCopyWithImpl<$Res>
    implements $IssuerDetailsCopyWith<$Res> {
  _$IssuerDetailsCopyWithImpl(this._self, this._then);

  final IssuerDetails _self;
  final $Res Function(IssuerDetails) _then;

/// Create a copy of IssuerDetails
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


class _IssuerDetails implements IssuerDetails {
  const _IssuerDetails({required this.issuerName, required this.typeOfIssuer, required this.sector, required this.industry, required this.issuerNature, required this.cin, required this.leadManager, required this.registrar, required this.debentureTrustee});
  

@override final  String issuerName;
@override final  String typeOfIssuer;
@override final  String sector;
@override final  String industry;
@override final  String issuerNature;
@override final  String cin;
@override final  String leadManager;
@override final  String registrar;
@override final  String debentureTrustee;

/// Create a copy of IssuerDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IssuerDetailsCopyWith<_IssuerDetails> get copyWith => __$IssuerDetailsCopyWithImpl<_IssuerDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IssuerDetails&&(identical(other.issuerName, issuerName) || other.issuerName == issuerName)&&(identical(other.typeOfIssuer, typeOfIssuer) || other.typeOfIssuer == typeOfIssuer)&&(identical(other.sector, sector) || other.sector == sector)&&(identical(other.industry, industry) || other.industry == industry)&&(identical(other.issuerNature, issuerNature) || other.issuerNature == issuerNature)&&(identical(other.cin, cin) || other.cin == cin)&&(identical(other.leadManager, leadManager) || other.leadManager == leadManager)&&(identical(other.registrar, registrar) || other.registrar == registrar)&&(identical(other.debentureTrustee, debentureTrustee) || other.debentureTrustee == debentureTrustee));
}


@override
int get hashCode => Object.hash(runtimeType,issuerName,typeOfIssuer,sector,industry,issuerNature,cin,leadManager,registrar,debentureTrustee);

@override
String toString() {
  return 'IssuerDetails(issuerName: $issuerName, typeOfIssuer: $typeOfIssuer, sector: $sector, industry: $industry, issuerNature: $issuerNature, cin: $cin, leadManager: $leadManager, registrar: $registrar, debentureTrustee: $debentureTrustee)';
}


}

/// @nodoc
abstract mixin class _$IssuerDetailsCopyWith<$Res> implements $IssuerDetailsCopyWith<$Res> {
  factory _$IssuerDetailsCopyWith(_IssuerDetails value, $Res Function(_IssuerDetails) _then) = __$IssuerDetailsCopyWithImpl;
@override @useResult
$Res call({
 String issuerName, String typeOfIssuer, String sector, String industry, String issuerNature, String cin, String leadManager, String registrar, String debentureTrustee
});




}
/// @nodoc
class __$IssuerDetailsCopyWithImpl<$Res>
    implements _$IssuerDetailsCopyWith<$Res> {
  __$IssuerDetailsCopyWithImpl(this._self, this._then);

  final _IssuerDetails _self;
  final $Res Function(_IssuerDetails) _then;

/// Create a copy of IssuerDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? issuerName = null,Object? typeOfIssuer = null,Object? sector = null,Object? industry = null,Object? issuerNature = null,Object? cin = null,Object? leadManager = null,Object? registrar = null,Object? debentureTrustee = null,}) {
  return _then(_IssuerDetails(
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
