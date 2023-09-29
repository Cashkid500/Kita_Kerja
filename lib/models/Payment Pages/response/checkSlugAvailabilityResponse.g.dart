// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkSlugAvailabilityResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckSlugAvailabilityResponse _$CheckSlugAvailabilityResponseFromJson(
        Map<String, dynamic> json) =>
    CheckSlugAvailabilityResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$CheckSlugAvailabilityResponseToJson(
        CheckSlugAvailabilityResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
