import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'fetchPaymentPageResponse.g.dart';

@JsonSerializable()
class FetchPaymentPageResponse {
    @JsonKey(name: "status")
    bool? status;
    @JsonKey(name: "message")
    String? message;
    @JsonKey(name: "data")
    Data? data;

    FetchPaymentPageResponse({
        this.status,
        this.message,
        this.data,
    });

    factory FetchPaymentPageResponse.fromJson(Map<String, dynamic> json) => _$FetchPaymentPageResponseFromJson(json);

    Map<String, dynamic> toJson() => _$FetchPaymentPageResponseToJson(this);
}

@JsonSerializable()
class Data {
    @JsonKey(name: "integration")
    int? integration;
    @JsonKey(name: "domain")
    String? domain;
    @JsonKey(name: "name")
    String? name;
    @JsonKey(name: "description")
    String? description;
    @JsonKey(name: "amount")
    int? amount;
    @JsonKey(name: "currency")
    String? currency;
    @JsonKey(name: "slug")
    String? slug;
    @JsonKey(name: "custom_fields")
    dynamic customFields;
    @JsonKey(name: "type")
    String? type;
    @JsonKey(name: "redirect_url")
    dynamic redirectUrl;
    @JsonKey(name: "success_message")
    dynamic successMessage;
    @JsonKey(name: "collect_phone")
    bool? collectPhone;
    @JsonKey(name: "active")
    bool? active;
    @JsonKey(name: "published")
    bool? published;
    @JsonKey(name: "migrate")
    bool? migrate;
    @JsonKey(name: "notification_email")
    dynamic notificationEmail;
    @JsonKey(name: "metadata")
    dynamic metadata;
    @JsonKey(name: "split_code")
    dynamic splitCode;
    @JsonKey(name: "id")
    int? id;
    @JsonKey(name: "createdAt")
    DateTime? createdAt;
    @JsonKey(name: "updatedAt")
    DateTime? updatedAt;

    Data({
        this.integration,
        this.domain,
        this.name,
        this.description,
        this.amount,
        this.currency,
        this.slug,
        this.customFields,
        this.type,
        this.redirectUrl,
        this.successMessage,
        this.collectPhone,
        this.active,
        this.published,
        this.migrate,
        this.notificationEmail,
        this.metadata,
        this.splitCode,
        this.id,
        this.createdAt,
        this.updatedAt,
    });

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

    Map<String, dynamic> toJson() => _$DataToJson(this);
}
