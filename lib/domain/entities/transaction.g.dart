// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Transaction _$TransactionFromJson(Map<String, dynamic> json) => _Transaction(
  id: json['id'] as String?,
  uid: json['uid'] as String,
  transactionTime: (json['transactionTime'] as num?)?.toInt(),
  transactionImage: json['transactionImage'] as String?,
  title: json['title'] as String,
  seats:
      (json['seats'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  theaterName: json['theaterName'] as String?,
  watchingTime: (json['watchingTime'] as num?)?.toInt(),
  ticketAmount: (json['ticketAmount'] as num?)?.toInt(),
  ticketPrice: (json['ticketPrice'] as num?)?.toInt(),
  adminFee: (json['adminFee'] as num).toInt(),
  total: (json['total'] as num).toInt(),
);

Map<String, dynamic> _$TransactionToJson(_Transaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'transactionTime': instance.transactionTime,
      'transactionImage': instance.transactionImage,
      'title': instance.title,
      'seats': instance.seats,
      'theaterName': instance.theaterName,
      'watchingTime': instance.watchingTime,
      'ticketAmount': instance.ticketAmount,
      'ticketPrice': instance.ticketPrice,
      'adminFee': instance.adminFee,
      'total': instance.total,
    };
