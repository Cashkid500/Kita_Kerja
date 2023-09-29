// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listTransfersResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListTransfersResponse _$ListTransfersResponseFromJson(
        Map<String, dynamic> json) =>
    ListTransfersResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] as List<dynamic>?,
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ListTransfersResponseToJson(
        ListTransfersResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'meta': instance.meta,
    };

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      total: json['total'] as int?,
      skipped: json['skipped'] as int?,
      perPage: json['perPage'] as int?,
      page: json['page'] as int?,
      pageCount: json['pageCount'] as int?,
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'total': instance.total,
      'skipped': instance.skipped,
      'perPage': instance.perPage,
      'page': instance.page,
      'pageCount': instance.pageCount,
    };
