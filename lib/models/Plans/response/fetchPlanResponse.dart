import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'fetchPlanResponse.g.dart';

@JsonSerializable()
class FetchPlanResponse {
    @JsonKey(name: "status")
    bool? status;
    @JsonKey(name: "message")
    String? message;
    @JsonKey(name: "data")
    Data? data;

    FetchPlanResponse({
        this.status,
        this.message,
        this.data,
    });

    factory FetchPlanResponse.fromJson(Map<String, dynamic> json) => _$FetchPlanResponseFromJson(json);

    Map<String, dynamic> toJson() => _$FetchPlanResponseToJson(this);
}

@JsonSerializable()
class Data {
    @JsonKey(name: "subscriptions")
    List<dynamic>? subscriptions;
    @JsonKey(name: "pages")
    List<dynamic>? pages;
    @JsonKey(name: "domain")
    String? domain;
    @JsonKey(name: "name")
    String? name;
    @JsonKey(name: "plan_code")
    String? planCode;
    @JsonKey(name: "description")
    String? description;
    @JsonKey(name: "amount")
    int? amount;
    @JsonKey(name: "interval")
    String? interval;
    @JsonKey(name: "invoice_limit")
    int? invoiceLimit;
    @JsonKey(name: "send_invoices")
    bool? sendInvoices;
    @JsonKey(name: "send_sms")
    bool? sendSms;
    @JsonKey(name: "hosted_page")
    bool? hostedPage;
    @JsonKey(name: "hosted_page_url")
    dynamic hostedPageUrl;
    @JsonKey(name: "hosted_page_summary")
    dynamic hostedPageSummary;
    @JsonKey(name: "currency")
    String? currency;
    @JsonKey(name: "migrate")
    bool? migrate;
    @JsonKey(name: "is_deleted")
    bool? isDeleted;
    @JsonKey(name: "is_archived")
    bool? isArchived;
    @JsonKey(name: "id")
    int? id;
    @JsonKey(name: "integration")
    int? integration;
    @JsonKey(name: "createdAt")
    DateTime? createdAt;
    @JsonKey(name: "updatedAt")
    DateTime? updatedAt;
    @JsonKey(name: "pages_count")
    int? pagesCount;
    @JsonKey(name: "subscribers_count")
    int? subscribersCount;
    @JsonKey(name: "subscriptions_count")
    int? subscriptionsCount;
    @JsonKey(name: "active_subscriptions_count")
    int? activeSubscriptionsCount;
    @JsonKey(name: "total_revenue")
    int? totalRevenue;
    @JsonKey(name: "subscribers")
    List<dynamic>? subscribers;

    Data({
        this.subscriptions,
        this.pages,
        this.domain,
        this.name,
        this.planCode,
        this.description,
        this.amount,
        this.interval,
        this.invoiceLimit,
        this.sendInvoices,
        this.sendSms,
        this.hostedPage,
        this.hostedPageUrl,
        this.hostedPageSummary,
        this.currency,
        this.migrate,
        this.isDeleted,
        this.isArchived,
        this.id,
        this.integration,
        this.createdAt,
        this.updatedAt,
        this.pagesCount,
        this.subscribersCount,
        this.subscriptionsCount,
        this.activeSubscriptionsCount,
        this.totalRevenue,
        this.subscribers,
    });

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

    Map<String, dynamic> toJson() => _$DataToJson(this);
}
