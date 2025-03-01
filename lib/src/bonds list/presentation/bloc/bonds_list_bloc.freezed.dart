// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bonds_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BondsListEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BondsListEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BondsListEvent()';
}


}

/// @nodoc
class $BondsListEventCopyWith<$Res>  {
$BondsListEventCopyWith(BondsListEvent _, $Res Function(BondsListEvent) __);
}


/// @nodoc


class FetchBonds implements BondsListEvent {
  const FetchBonds();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchBonds);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BondsListEvent.fetchBonds()';
}


}




/// @nodoc


class SearchBonds implements BondsListEvent {
  const SearchBonds(this.query);
  

 final  String query;

/// Create a copy of BondsListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchBondsCopyWith<SearchBonds> get copyWith => _$SearchBondsCopyWithImpl<SearchBonds>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchBonds&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'BondsListEvent.searchBonds(query: $query)';
}


}

/// @nodoc
abstract mixin class $SearchBondsCopyWith<$Res> implements $BondsListEventCopyWith<$Res> {
  factory $SearchBondsCopyWith(SearchBonds value, $Res Function(SearchBonds) _then) = _$SearchBondsCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$SearchBondsCopyWithImpl<$Res>
    implements $SearchBondsCopyWith<$Res> {
  _$SearchBondsCopyWithImpl(this._self, this._then);

  final SearchBonds _self;
  final $Res Function(SearchBonds) _then;

/// Create a copy of BondsListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(SearchBonds(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$BondsListState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BondsListState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BondsListState()';
}


}

/// @nodoc
class $BondsListStateCopyWith<$Res>  {
$BondsListStateCopyWith(BondsListState _, $Res Function(BondsListState) __);
}


/// @nodoc


class Initial implements BondsListState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BondsListState.initial()';
}


}




/// @nodoc


class Loading implements BondsListState {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BondsListState.loading()';
}


}




/// @nodoc


class Loaded implements BondsListState {
  const Loaded(final  List<Bond> bonds, final  List<Bond> filteredBonds, this.searchQuery): _bonds = bonds,_filteredBonds = filteredBonds;
  

 final  List<Bond> _bonds;
 List<Bond> get bonds {
  if (_bonds is EqualUnmodifiableListView) return _bonds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bonds);
}

 final  List<Bond> _filteredBonds;
 List<Bond> get filteredBonds {
  if (_filteredBonds is EqualUnmodifiableListView) return _filteredBonds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filteredBonds);
}

 final  String searchQuery;

/// Create a copy of BondsListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedCopyWith<Loaded> get copyWith => _$LoadedCopyWithImpl<Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loaded&&const DeepCollectionEquality().equals(other._bonds, _bonds)&&const DeepCollectionEquality().equals(other._filteredBonds, _filteredBonds)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_bonds),const DeepCollectionEquality().hash(_filteredBonds),searchQuery);

@override
String toString() {
  return 'BondsListState.loaded(bonds: $bonds, filteredBonds: $filteredBonds, searchQuery: $searchQuery)';
}


}

/// @nodoc
abstract mixin class $LoadedCopyWith<$Res> implements $BondsListStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) _then) = _$LoadedCopyWithImpl;
@useResult
$Res call({
 List<Bond> bonds, List<Bond> filteredBonds, String searchQuery
});




}
/// @nodoc
class _$LoadedCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(this._self, this._then);

  final Loaded _self;
  final $Res Function(Loaded) _then;

/// Create a copy of BondsListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bonds = null,Object? filteredBonds = null,Object? searchQuery = null,}) {
  return _then(Loaded(
null == bonds ? _self._bonds : bonds // ignore: cast_nullable_to_non_nullable
as List<Bond>,null == filteredBonds ? _self._filteredBonds : filteredBonds // ignore: cast_nullable_to_non_nullable
as List<Bond>,null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Error implements BondsListState {
  const Error(this.message);
  

 final  String message;

/// Create a copy of BondsListState
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
  return 'BondsListState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ErrorCopyWith<$Res> implements $BondsListStateCopyWith<$Res> {
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

/// Create a copy of BondsListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
