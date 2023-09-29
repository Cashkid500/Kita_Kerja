// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'viewTransactionTimelineResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ViewTransactionTimelineResponse _$ViewTransactionTimelineResponseFromJson(
        Map<String, dynamic> json) =>
    ViewTransactionTimelineResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ViewTransactionTimelineResponseToJson(
        ViewTransactionTimelineResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data();

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{};
