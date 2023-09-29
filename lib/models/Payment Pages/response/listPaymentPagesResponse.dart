import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'listPaymentPagesResponse.g.dart';

@JsonSerializable()
class ListPaymentPagesResponse {
    @JsonKey(name: "status")
    bool? status;
    @JsonKey(name: "message")
    String? message;
    @JsonKey(name: "data")
    List<Datum>? data;
    @JsonKey(name: "meta")
    Meta? meta;

    ListPaymentPagesResponse({
        this.status,
        this.message,
        this.data,
        this.meta,
    });

    factory ListPaymentPagesResponse.fromJson(Map<String, dynamic> json) => _$ListPaymentPagesResponseFromJson(json);

    Map<String, dynamic> toJson() => _$ListPaymentPagesResponseToJson(this);
}

@JsonSerializable()
class Datum {
    @JsonKey(name: "integration")
    int? integration;
    @JsonKey(name: "plan")
    dynamic plan;
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

    Datum({
        this.integration,
        this.plan,
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

    factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

    Map<String, dynamic> toJson() => _$DatumToJson(this);
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
