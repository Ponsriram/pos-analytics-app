// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'online_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OnlineOrderModel _$OnlineOrderModelFromJson(Map<String, dynamic> json) =>
    _OnlineOrderModel(
      id: json['id'] as String? ?? '',
      orderType: json['order_type'] as String? ?? '',
      channel: json['channel'] as String? ?? '',
      status: json['status'] as String? ?? '',
      paymentStatus: json['payment_status'] as String? ?? '',
      netAmount: (json['net_amount'] as num?)?.toDouble() ?? 0,
      grossAmount: (json['gross_amount'] as num?)?.toDouble() ?? 0,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      tableNumber: json['table_number'] as String?,
    );

Map<String, dynamic> _$OnlineOrderModelToJson(_OnlineOrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_type': instance.orderType,
      'channel': instance.channel,
      'status': instance.status,
      'payment_status': instance.paymentStatus,
      'net_amount': instance.netAmount,
      'gross_amount': instance.grossAmount,
      'created_at': instance.createdAt?.toIso8601String(),
      'table_number': instance.tableNumber,
    };
