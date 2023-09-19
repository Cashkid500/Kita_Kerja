import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'listTerminalsResponse.g.dart';

@JsonSerializable()
class Welcome {
    @JsonKey(name: "status")
    bool? status;
    @JsonKey(name: "message")
    String? message;
    @JsonKey(name: "data")
    List<dynamic>? data;
    @JsonKey(name: "meta")
    Meta? meta;

    Welcome({
        this.status,
        this.message,
        this.data,
        this.meta,
    });

    factory Welcome.fromJson(Map<String, dynamic> json) => _$WelcomeFromJson(json);

    Map<String, dynamic> toJson() => _$WelcomeToJson(this);
}

@JsonSerializable()
class Meta {
    @JsonKey(name: "next")
    dynamic next;
    @JsonKey(name: "previous")
    dynamic previous;
    @JsonKey(name: "perPage")
    int? perPage;

    Meta({
        this.next,
        this.previous,
        this.perPage,
    });

    factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

    Map<String, dynamic> toJson() => _$MetaToJson(this);
}
