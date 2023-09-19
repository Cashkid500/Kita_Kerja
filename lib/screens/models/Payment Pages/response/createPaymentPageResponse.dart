import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'createPaymentPageResponse.g.dart';

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
    @JsonKey(name: "name")
    String? name;
    @JsonKey(name: "description")
    String? description;
    @JsonKey(name: "amount")
    int? amount;
    @JsonKey(name: "integration")
    int? integration;
    @JsonKey(name: "domain")
    String? domain;
    @JsonKey(name: "slug")
    String? slug;
    @JsonKey(name: "currency")
    String? currency;
    @JsonKey(name: "type")
    String? type;
    @JsonKey(name: "collect_phone")
    bool? collectPhone;
    @JsonKey(name: "active")
    bool? active;
    @JsonKey(name: "published")
    bool? published;
    @JsonKey(name: "migrate")
    bool? migrate;
    @JsonKey(name: "id")
    int? id;
    @JsonKey(name: "createdAt")
    DateTime? createdAt;
    @JsonKey(name: "updatedAt")
    DateTime? updatedAt;

    Data({
        this.name,
        this.description,
        this.amount,
        this.integration,
        this.domain,
        this.slug,
        this.currency,
        this.type,
        this.collectPhone,
        this.active,
        this.published,
        this.migrate,
        this.id,
        this.createdAt,
        this.updatedAt,
    });

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

    Map<String, dynamic> toJson() => _$DataToJson(this);
}
