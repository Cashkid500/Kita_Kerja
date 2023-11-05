// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unregister_domain_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UnregisterDomainResponse _$UnregisterDomainResponseFromJson(
        Map<String, dynamic> json) =>
    UnregisterDomainResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$UnregisterDomainResponseToJson(
        UnregisterDomainResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
