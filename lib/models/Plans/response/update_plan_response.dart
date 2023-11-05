import 'package:json_annotation/json_annotation.dart';


part 'update_plan_response.g.dart';

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
