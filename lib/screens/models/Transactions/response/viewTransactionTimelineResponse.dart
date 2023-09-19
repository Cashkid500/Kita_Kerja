import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'viewTransactionTimelineResponse.g.dart';

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
    Data();

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

    Map<String, dynamic> toJson() => _$DataToJson(this);
}
