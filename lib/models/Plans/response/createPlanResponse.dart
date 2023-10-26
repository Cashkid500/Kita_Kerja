import 'package:json_annotation/json_annotation.dart';

part 'createPlanResponse.g.dart';

@JsonSerializable()
class CreatePlanResponse {
    @JsonKey(name: "status")
    bool? status;
    @JsonKey(name: "message")
    String? message;
    @JsonKey(name: "data")
    Data? data;

    CreatePlanResponse({
        this.status,
        this.message,
        this.data,
    });

    factory CreatePlanResponse.fromJson(Map<String, dynamic> json) => _$CreatePlanResponseFromJson(json);

    Map<String, dynamic> toJson() => _$CreatePlanResponseToJson(this);
}

@JsonSerializable()
class Data {
    @JsonKey(name: "name")
    String? name;
    @JsonKey(name: "interval")
    String? interval;
    @JsonKey(name: "amount")
    int? amount;
    @JsonKey(name: "description")
    String? description;
    @JsonKey(name: "send_invoices")
    bool? sendInvoices;
    @JsonKey(name: "send_sms")
    bool? sendSms;
    @JsonKey(name: "currency")
    String? currency;
    @JsonKey(name: "integration")
    int? integration;
    @JsonKey(name: "domain")
    String? domain;
    @JsonKey(name: "plan_code")
    String? planCode;
    @JsonKey(name: "invoice_limit")
    int? invoiceLimit;
    @JsonKey(name: "hosted_page")
    bool? hostedPage;
    @JsonKey(name: "migrate")
    bool? migrate;
    @JsonKey(name: "is_archived")
    bool? isArchived;
    @JsonKey(name: "id")
    int? id;
    @JsonKey(name: "createdAt")
    DateTime? createdAt;
    @JsonKey(name: "updatedAt")
    DateTime? updatedAt;

    Data({
        this.name,
        this.interval,
        this.amount,
        this.description,
        this.sendInvoices,
        this.sendSms,
        this.currency,
        this.integration,
        this.domain,
        this.planCode,
        this.invoiceLimit,
        this.hostedPage,
        this.migrate,
        this.isArchived,
        this.id,
        this.createdAt,
        this.updatedAt,
    });

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

    Map<String, dynamic> toJson() => _$DataToJson(this);
}
