// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_plan_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdatePlanResponse _$UpdatePlanResponseFromJson(Map<String, dynamic> json) =>
    UpdatePlanResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$UpdatePlanResponseToJson(UpdatePlanResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
