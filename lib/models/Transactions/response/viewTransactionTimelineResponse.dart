import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'viewTransactionTimelineResponse.g.dart';

@JsonSerializable()
class ViewTransactionTimelineResponse {
    @JsonKey(name: "status")
    bool? status;
    @JsonKey(name: "message")
    String? message;
    @JsonKey(name: "data")
    Data? data;

    ViewTransactionTimelineResponse({
        this.status,
        this.message,
        this.data,
    });

    factory ViewTransactionTimelineResponse.fromJson(Map<String, dynamic> json) => _$ViewTransactionTimelineResponseFromJson(json);

    Map<String, dynamic> toJson() => _$ViewTransactionTimelineResponseToJson(this);
}

@JsonSerializable()
class Data {
    Data();

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

    Map<String, dynamic> toJson() => _$DataToJson(this);
}
