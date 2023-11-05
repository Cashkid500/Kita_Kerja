import 'package:json_annotation/json_annotation.dart';


part 'initialize_transaction_response.g.dart';

@JsonSerializable()
class InitializeTransactionResponse {
    @JsonKey(name: "status")
    bool? status;
    @JsonKey(name: "message")
    String? message;
    @JsonKey(name: "data")
    Data? data;

    InitializeTransactionResponse({
        this.status,
        this.message,
        this.data,
    });

    factory InitializeTransactionResponse.fromJson(Map<String, dynamic> json) => _$InitializeTransactionResponseFromJson(json);

    Map<String, dynamic> toJson() => _$InitializeTransactionResponseToJson(this);
}

@JsonSerializable()
class Data {
    @JsonKey(name: "authorization_url")
    String? authorizationUrl;
    @JsonKey(name: "access_code")
    String? accessCode;
    @JsonKey(name: "reference")
    String? reference;

    Data({
        this.authorizationUrl,
        this.accessCode,
        this.reference,
    });

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

    Map<String, dynamic> toJson() => _$DataToJson(this);
}
