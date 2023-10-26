import 'package:json_annotation/json_annotation.dart';


part 'exportTransactionResponse.g.dart';

@JsonSerializable()
class ExportTransactionResponse {
    @JsonKey(name: "status")
    bool? status;
    @JsonKey(name: "message")
    String? message;
    @JsonKey(name: "data")
    Data? data;

    ExportTransactionResponse({
        this.status,
        this.message,
        this.data,
    });

    factory ExportTransactionResponse.fromJson(Map<String, dynamic> json) => _$ExportTransactionResponseFromJson(json);

    Map<String, dynamic> toJson() => _$ExportTransactionResponseToJson(this);
}

@JsonSerializable()
class Data {
    @JsonKey(name: "path")
    String? path;
    @JsonKey(name: "expiresAt")
    DateTime? expiresAt;

    Data({
        this.path,
        this.expiresAt,
    });

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

    Map<String, dynamic> toJson() => _$DataToJson(this);
}
