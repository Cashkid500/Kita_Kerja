import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'updatePlanResponse.g.dart';

@JsonSerializable()
class UpdatePlanResponse {
    @JsonKey(name: "status")
    bool? status;
    @JsonKey(name: "message")
    String? message;

    UpdatePlanResponse({
        this.status,
        this.message,
    });

    factory UpdatePlanResponse.fromJson(Map<String, dynamic> json) => _$UpdatePlanResponseFromJson(json);

    Map<String, dynamic> toJson() => _$UpdatePlanResponseToJson(this);
}
