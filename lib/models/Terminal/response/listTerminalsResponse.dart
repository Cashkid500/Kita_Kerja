import 'package:json_annotation/json_annotation.dart';

part 'listTerminalsResponse.g.dart';

@JsonSerializable()
class ListTerminalsResponse {
    @JsonKey(name: "status")
    bool? status;
    @JsonKey(name: "message")
    String? message;
    @JsonKey(name: "data")
    List<dynamic>? data;
    @JsonKey(name: "meta")
    Meta? meta;

    ListTerminalsResponse({
        this.status,
        this.message,
        this.data,
        this.meta,
    });

    factory ListTerminalsResponse.fromJson(Map<String, dynamic> json) => _$ListTerminalsResponseFromJson(json);

    Map<String, dynamic> toJson() => _$ListTerminalsResponseToJson(this);
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
