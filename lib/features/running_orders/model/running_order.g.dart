// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'running_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RunningOrderCategory _$RunningOrderCategoryFromJson(
  Map<String, dynamic> json,
) => _RunningOrderCategory(
  name: json['name'] as String,
  orderCount: (json['orderCount'] as num?)?.toInt() ?? 0,
  totalAmount: (json['totalAmount'] as num?)?.toDouble() ?? 0,
  status: json['status'] as String? ?? 'active',
);

Map<String, dynamic> _$RunningOrderCategoryToJson(
  _RunningOrderCategory instance,
) => <String, dynamic>{
  'name': instance.name,
  'orderCount': instance.orderCount,
  'totalAmount': instance.totalAmount,
  'status': instance.status,
};

_RunningOrdersSummary _$RunningOrdersSummaryFromJson(
  Map<String, dynamic> json,
) => _RunningOrdersSummary(
  categories:
      (json['categories'] as List<dynamic>?)
          ?.map((e) => RunningOrderCategory.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  totalOrderCount: (json['totalOrderCount'] as num?)?.toInt() ?? 0,
  totalTableCount: (json['totalTableCount'] as num?)?.toInt() ?? 0,
  totalEstimatedAmount: (json['totalEstimatedAmount'] as num?)?.toDouble() ?? 0,
);

Map<String, dynamic> _$RunningOrdersSummaryToJson(
  _RunningOrdersSummary instance,
) => <String, dynamic>{
  'categories': instance.categories,
  'totalOrderCount': instance.totalOrderCount,
  'totalTableCount': instance.totalTableCount,
  'totalEstimatedAmount': instance.totalEstimatedAmount,
};
