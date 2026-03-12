// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_trend.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderTrend _$OrderTrendFromJson(Map<String, dynamic> json) => _OrderTrend(
  date: json['date'] as String,
  orderCount: (json['order_count'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$OrderTrendToJson(_OrderTrend instance) =>
    <String, dynamic>{
      'date': instance.date,
      'order_count': instance.orderCount,
    };
