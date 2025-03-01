// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bond_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BondDetailsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BondDetailsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BondDetailsEvent()';
}


}

/// @nodoc
class $BondDetailsEventCopyWith<$Res>  {
$BondDetailsEventCopyWith(BondDetailsEvent _, $Res Function(BondDetailsEvent) __);
}


/// @nodoc


class FetchBondDetail implements BondDetailsEvent {
  const FetchBondDetail();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchBondDetail);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BondDetailsEvent.fetchBondDetail()';
}


}




/// @nodoc
mixin _$BondDetailsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BondDetailsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BondDetailsState()';
}


}

/// @nodoc
class $BondDetailsStateCopyWith<$Res>  {
$BondDetailsStateCopyWith(BondDetailsState _, $Res Function(BondDetailsState) __);
}


/// @nodoc


class Initial implements BondDetailsState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BondDetailsState.initial()';
}


}




/// @nodoc


class Loading implements BondDetailsState {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BondDetailsState.loading()';
}


}




/// @nodoc


class Loaded implements BondDetailsState {
  const Loaded(this.bondDetail);
  

 final  BondDetail bondDetail;

/// Create a copy of BondDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedCopyWith<Loaded> get copyWith => _$LoadedCopyWithImpl<Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loaded&&(identical(other.bondDetail, bondDetail) || other.bondDetail == bondDetail));
}


@override
int get hashCode => Object.hash(runtimeType,bondDetail);

@override
String toString() {
  return 'BondDetailsState.loaded(bondDetail: $bondDetail)';
}


}

/// @nodoc
abstract mixin class $LoadedCopyWith<$Res> implements $BondDetailsStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) _then) = _$LoadedCopyWithImpl;
@useResult
$Res call({
 BondDetail bondDetail
});


$BondDetailCopyWith<$Res> get bondDetail;

}
/// @nodoc
class _$LoadedCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(this._self, this._then);

  final Loaded _self;
  final $Res Function(Loaded) _then;

/// Create a copy of BondDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bondDetail = null,}) {
  return _then(Loaded(
null == bondDetail ? _self.bondDetail : bondDetail // ignore: cast_nullable_to_non_nullable
as BondDetail,
  ));
}

/// Create a copy of BondDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BondDetailCopyWith<$Res> get bondDetail {
  
  return $BondDetailCopyWith<$Res>(_self.bondDetail, (value) {
    return _then(_self.copyWith(bondDetail: value));
  });
}
}

/// @nodoc


class Error implements BondDetailsState {
  const Error(this.message);
  

 final  String message;

/// Create a copy of BondDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorCopyWith<Error> get copyWith => _$ErrorCopyWithImpl<Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'BondDetailsState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ErrorCopyWith<$Res> implements $BondDetailsStateCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) _then) = _$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ErrorCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(this._self, this._then);

  final Error _self;
  final $Res Function(Error) _then;

/// Create a copy of BondDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
