import 'package:json_annotation/json_annotation.dart';


part 'list_plans_response.g.dart';

@JsonSerializable()
class ListPlansResponse {
    @JsonKey(name: "status")
    bool? status;
    @JsonKey(name: "message")
    String? message;
    @JsonKey(name: "data")
    List<Datum>? data;
    @JsonKey(name: "meta")
    Meta? meta;

    ListPlansResponse({
        this.status,
        this.message,
        this.data,
        this.meta,
    });

    factory ListPlansResponse.fromJson(Map<String, dynamic> json) => _$ListPlansResponseFromJson(json);

    Map<String, dynamic> toJson() => _$ListPlansResponseToJson(this);
}

@JsonSerializable()
class Datum {
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
    @JsonKey(name: "total_subscriptions")
    int? totalSubscriptions;
    @JsonKey(name: "active_subscriptions")
    int? activeSubscriptions;
    @JsonKey(name: "total_subscriptions_revenue")
    int? totalSubscriptionsRevenue;

    Datum({
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
        this.totalSubscriptions,
        this.activeSubscriptions,
        this.totalSubscriptionsRevenue,
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
