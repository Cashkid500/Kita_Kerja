// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listTerminalsResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListTerminalsResponse _$ListTerminalsResponseFromJson(
        Map<String, dynamic> json) =>
    ListTerminalsResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] as List<dynamic>?,
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ListTerminalsResponseToJson(
        ListTerminalsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'meta': instance.meta,
    };

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      next: json['next'],
      previous: json['previous'],
      perPage: json['perPage'] as int?,
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'next': instance.next,
      'previous': instance.previous,
      'perPage': instance.perPage,
    };
