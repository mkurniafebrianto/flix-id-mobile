// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Transaction {

 String? get id; String get uid; int? get transactionTime; String? get transactionImage; String get title; List<String> get seats; String? get theaterName; int? get watchingTime; int? get ticketAmount; int? get ticketPrice; int get adminFee; int get total;
/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionCopyWith<Transaction> get copyWith => _$TransactionCopyWithImpl<Transaction>(this as Transaction, _$identity);

  /// Serializes this Transaction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Transaction&&(identical(other.id, id) || other.id == id)&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.transactionTime, transactionTime) || other.transactionTime == transactionTime)&&(identical(other.transactionImage, transactionImage) || other.transactionImage == transactionImage)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.seats, seats)&&(identical(other.theaterName, theaterName) || other.theaterName == theaterName)&&(identical(other.watchingTime, watchingTime) || other.watchingTime == watchingTime)&&(identical(other.ticketAmount, ticketAmount) || other.ticketAmount == ticketAmount)&&(identical(other.ticketPrice, ticketPrice) || other.ticketPrice == ticketPrice)&&(identical(other.adminFee, adminFee) || other.adminFee == adminFee)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,uid,transactionTime,transactionImage,title,const DeepCollectionEquality().hash(seats),theaterName,watchingTime,ticketAmount,ticketPrice,adminFee,total);

@override
String toString() {
  return 'Transaction(id: $id, uid: $uid, transactionTime: $transactionTime, transactionImage: $transactionImage, title: $title, seats: $seats, theaterName: $theaterName, watchingTime: $watchingTime, ticketAmount: $ticketAmount, ticketPrice: $ticketPrice, adminFee: $adminFee, total: $total)';
}


}

/// @nodoc
abstract mixin class $TransactionCopyWith<$Res>  {
  factory $TransactionCopyWith(Transaction value, $Res Function(Transaction) _then) = _$TransactionCopyWithImpl;
@useResult
$Res call({
 String? id, String uid, int? transactionTime, String? transactionImage, String title, List<String> seats, String? theaterName, int? watchingTime, int? ticketAmount, int? ticketPrice, int adminFee, int total
});




}
/// @nodoc
class _$TransactionCopyWithImpl<$Res>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._self, this._then);

  final Transaction _self;
  final $Res Function(Transaction) _then;

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? uid = null,Object? transactionTime = freezed,Object? transactionImage = freezed,Object? title = null,Object? seats = null,Object? theaterName = freezed,Object? watchingTime = freezed,Object? ticketAmount = freezed,Object? ticketPrice = freezed,Object? adminFee = null,Object? total = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,transactionTime: freezed == transactionTime ? _self.transactionTime : transactionTime // ignore: cast_nullable_to_non_nullable
as int?,transactionImage: freezed == transactionImage ? _self.transactionImage : transactionImage // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,seats: null == seats ? _self.seats : seats // ignore: cast_nullable_to_non_nullable
as List<String>,theaterName: freezed == theaterName ? _self.theaterName : theaterName // ignore: cast_nullable_to_non_nullable
as String?,watchingTime: freezed == watchingTime ? _self.watchingTime : watchingTime // ignore: cast_nullable_to_non_nullable
as int?,ticketAmount: freezed == ticketAmount ? _self.ticketAmount : ticketAmount // ignore: cast_nullable_to_non_nullable
as int?,ticketPrice: freezed == ticketPrice ? _self.ticketPrice : ticketPrice // ignore: cast_nullable_to_non_nullable
as int?,adminFee: null == adminFee ? _self.adminFee : adminFee // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Transaction].
extension TransactionPatterns on Transaction {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Transaction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Transaction() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Transaction value)  $default,){
final _that = this;
switch (_that) {
case _Transaction():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Transaction value)?  $default,){
final _that = this;
switch (_that) {
case _Transaction() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String uid,  int? transactionTime,  String? transactionImage,  String title,  List<String> seats,  String? theaterName,  int? watchingTime,  int? ticketAmount,  int? ticketPrice,  int adminFee,  int total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Transaction() when $default != null:
return $default(_that.id,_that.uid,_that.transactionTime,_that.transactionImage,_that.title,_that.seats,_that.theaterName,_that.watchingTime,_that.ticketAmount,_that.ticketPrice,_that.adminFee,_that.total);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String uid,  int? transactionTime,  String? transactionImage,  String title,  List<String> seats,  String? theaterName,  int? watchingTime,  int? ticketAmount,  int? ticketPrice,  int adminFee,  int total)  $default,) {final _that = this;
switch (_that) {
case _Transaction():
return $default(_that.id,_that.uid,_that.transactionTime,_that.transactionImage,_that.title,_that.seats,_that.theaterName,_that.watchingTime,_that.ticketAmount,_that.ticketPrice,_that.adminFee,_that.total);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String uid,  int? transactionTime,  String? transactionImage,  String title,  List<String> seats,  String? theaterName,  int? watchingTime,  int? ticketAmount,  int? ticketPrice,  int adminFee,  int total)?  $default,) {final _that = this;
switch (_that) {
case _Transaction() when $default != null:
return $default(_that.id,_that.uid,_that.transactionTime,_that.transactionImage,_that.title,_that.seats,_that.theaterName,_that.watchingTime,_that.ticketAmount,_that.ticketPrice,_that.adminFee,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Transaction implements Transaction {
   _Transaction({this.id, required this.uid, this.transactionTime, this.transactionImage, required this.title, final  List<String> seats = const <String>[], this.theaterName, this.watchingTime, this.ticketAmount, this.ticketPrice, required this.adminFee, required this.total}): _seats = seats;
  factory _Transaction.fromJson(Map<String, dynamic> json) => _$TransactionFromJson(json);

@override final  String? id;
@override final  String uid;
@override final  int? transactionTime;
@override final  String? transactionImage;
@override final  String title;
 final  List<String> _seats;
@override@JsonKey() List<String> get seats {
  if (_seats is EqualUnmodifiableListView) return _seats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_seats);
}

@override final  String? theaterName;
@override final  int? watchingTime;
@override final  int? ticketAmount;
@override final  int? ticketPrice;
@override final  int adminFee;
@override final  int total;

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionCopyWith<_Transaction> get copyWith => __$TransactionCopyWithImpl<_Transaction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Transaction&&(identical(other.id, id) || other.id == id)&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.transactionTime, transactionTime) || other.transactionTime == transactionTime)&&(identical(other.transactionImage, transactionImage) || other.transactionImage == transactionImage)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._seats, _seats)&&(identical(other.theaterName, theaterName) || other.theaterName == theaterName)&&(identical(other.watchingTime, watchingTime) || other.watchingTime == watchingTime)&&(identical(other.ticketAmount, ticketAmount) || other.ticketAmount == ticketAmount)&&(identical(other.ticketPrice, ticketPrice) || other.ticketPrice == ticketPrice)&&(identical(other.adminFee, adminFee) || other.adminFee == adminFee)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,uid,transactionTime,transactionImage,title,const DeepCollectionEquality().hash(_seats),theaterName,watchingTime,ticketAmount,ticketPrice,adminFee,total);

@override
String toString() {
  return 'Transaction(id: $id, uid: $uid, transactionTime: $transactionTime, transactionImage: $transactionImage, title: $title, seats: $seats, theaterName: $theaterName, watchingTime: $watchingTime, ticketAmount: $ticketAmount, ticketPrice: $ticketPrice, adminFee: $adminFee, total: $total)';
}


}

/// @nodoc
abstract mixin class _$TransactionCopyWith<$Res> implements $TransactionCopyWith<$Res> {
  factory _$TransactionCopyWith(_Transaction value, $Res Function(_Transaction) _then) = __$TransactionCopyWithImpl;
@override @useResult
$Res call({
 String? id, String uid, int? transactionTime, String? transactionImage, String title, List<String> seats, String? theaterName, int? watchingTime, int? ticketAmount, int? ticketPrice, int adminFee, int total
});




}
/// @nodoc
class __$TransactionCopyWithImpl<$Res>
    implements _$TransactionCopyWith<$Res> {
  __$TransactionCopyWithImpl(this._self, this._then);

  final _Transaction _self;
  final $Res Function(_Transaction) _then;

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? uid = null,Object? transactionTime = freezed,Object? transactionImage = freezed,Object? title = null,Object? seats = null,Object? theaterName = freezed,Object? watchingTime = freezed,Object? ticketAmount = freezed,Object? ticketPrice = freezed,Object? adminFee = null,Object? total = null,}) {
  return _then(_Transaction(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,transactionTime: freezed == transactionTime ? _self.transactionTime : transactionTime // ignore: cast_nullable_to_non_nullable
as int?,transactionImage: freezed == transactionImage ? _self.transactionImage : transactionImage // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,seats: null == seats ? _self._seats : seats // ignore: cast_nullable_to_non_nullable
as List<String>,theaterName: freezed == theaterName ? _self.theaterName : theaterName // ignore: cast_nullable_to_non_nullable
as String?,watchingTime: freezed == watchingTime ? _self.watchingTime : watchingTime // ignore: cast_nullable_to_non_nullable
as int?,ticketAmount: freezed == ticketAmount ? _self.ticketAmount : ticketAmount // ignore: cast_nullable_to_non_nullable
as int?,ticketPrice: freezed == ticketPrice ? _self.ticketPrice : ticketPrice // ignore: cast_nullable_to_non_nullable
as int?,adminFee: null == adminFee ? _self.adminFee : adminFee // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
