import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'listSplitsResponse.g.dart';

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
    @JsonKey(name: "total")
    int? total;
    @JsonKey(name: "skipped")
    int? skipped;
    @JsonKey(name: "perPage")
    int? perPage;
    @JsonKey(name: "page")
    int? page;
    @JsonKey(name: "pageCount")
    int? pageCount;

    Meta({
        this.total,
        this.skipped,
        this.perPage,
        this.page,
        this.pageCount,
    });

    factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

    Map<String, dynamic> toJson() => _$MetaToJson(this);
}
