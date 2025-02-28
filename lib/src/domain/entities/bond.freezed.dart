// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bond.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Bond {

 String get logo; String get isin; String get rating; String get companyName; List<String> get tags;
/// Create a copy of Bond
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BondCopyWith<Bond> get copyWith => _$BondCopyWithImpl<Bond>(this as Bond, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Bond&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.isin, isin) || other.isin == isin)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&const DeepCollectionEquality().equals(other.tags, tags));
}


@override
int get hashCode => Object.hash(runtimeType,logo,isin,rating,companyName,const DeepCollectionEquality().hash(tags));

@override
String toString() {
  return 'Bond(logo: $logo, isin: $isin, rating: $rating, companyName: $companyName, tags: $tags)';
}


}

/// @nodoc
abstract mixin class $BondCopyWith<$Res>  {
  factory $BondCopyWith(Bond value, $Res Function(Bond) _then) = _$BondCopyWithImpl;
@useResult
$Res call({
 String logo, String isin, String rating, String companyName, List<String> tags
});




}
/// @nodoc
class _$BondCopyWithImpl<$Res>
    implements $BondCopyWith<$Res> {
  _$BondCopyWithImpl(this._self, this._then);

  final Bond _self;
  final $Res Function(Bond) _then;

/// Create a copy of Bond
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? logo = null,Object? isin = null,Object? rating = null,Object? companyName = null,Object? tags = null,}) {
  return _then(_self.copyWith(
logo: null == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String,isin: null == isin ? _self.isin : isin // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// @nodoc


class _Bond implements Bond {
  const _Bond({required this.logo, required this.isin, required this.rating, required this.companyName, required final  List<String> tags}): _tags = tags;
  

@override final  String logo;
@override final  String isin;
@override final  String rating;
@override final  String companyName;
 final  List<String> _tags;
@override List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}


/// Create a copy of Bond
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BondCopyWith<_Bond> get copyWith => __$BondCopyWithImpl<_Bond>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Bond&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.isin, isin) || other.isin == isin)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&const DeepCollectionEquality().equals(other._tags, _tags));
}


@override
int get hashCode => Object.hash(runtimeType,logo,isin,rating,companyName,const DeepCollectionEquality().hash(_tags));

@override
String toString() {
  return 'Bond(logo: $logo, isin: $isin, rating: $rating, companyName: $companyName, tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$BondCopyWith<$Res> implements $BondCopyWith<$Res> {
  factory _$BondCopyWith(_Bond value, $Res Function(_Bond) _then) = __$BondCopyWithImpl;
@override @useResult
$Res call({
 String logo, String isin, String rating, String companyName, List<String> tags
});




}
/// @nodoc
class __$BondCopyWithImpl<$Res>
    implements _$BondCopyWith<$Res> {
  __$BondCopyWithImpl(this._self, this._then);

  final _Bond _self;
  final $Res Function(_Bond) _then;

/// Create a copy of Bond
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? logo = null,Object? isin = null,Object? rating = null,Object? companyName = null,Object? tags = null,}) {
  return _then(_Bond(
logo: null == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String,isin: null == isin ? _self.isin : isin // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
