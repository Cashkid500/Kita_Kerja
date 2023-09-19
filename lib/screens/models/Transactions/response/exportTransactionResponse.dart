import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'exportTransactionResponse.g.dart';

@JsonSerializable()
class Welcome {
    @JsonKey(name: "status")
    bool? status;
    @JsonKey(name: "message")
    String? message;
    @JsonKey(name: "data")
    Data? data;

    Welcome({
        this.status,
        this.message,
        this.data,
    });

    factory Welcome.fromJson(Map<String, dynamic> json) => _$WelcomeFromJson(json);

    Map<String, dynamic> toJson() => _$WelcomeToJson(this);
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
