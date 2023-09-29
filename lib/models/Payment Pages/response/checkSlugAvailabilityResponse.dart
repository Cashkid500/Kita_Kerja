import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'checkSlugAvailabilityResponse.g.dart';

@JsonSerializable()
class CheckSlugAvailabilityResponse {
    @JsonKey(name: "status")
    bool? status;
    @JsonKey(name: "message")
    String? message;

    CheckSlugAvailabilityResponse({
        this.status,
        this.message,
    });

    factory CheckSlugAvailabilityResponse.fromJson(Map<String, dynamic> json) => _$CheckSlugAvailabilityResponseFromJson(json);

    Map<String, dynamic> toJson() => _$CheckSlugAvailabilityResponseToJson(this);
}
