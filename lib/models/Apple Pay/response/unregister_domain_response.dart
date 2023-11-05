import 'package:json_annotation/json_annotation.dart';


part 'unregister_domain_response.g.dart';

@JsonSerializable()
class UnregisterDomainResponse {
    @JsonKey(name: "status")
    bool? status;
    @JsonKey(name: "message")
    String? message;

    UnregisterDomainResponse({
        this.status,
        this.message,
    });

    factory UnregisterDomainResponse.fromJson(Map<String, dynamic> json) => _$UnregisterDomainResponseFromJson(json);

    Map<String, dynamic> toJson() => _$UnregisterDomainResponseToJson(this);
}
