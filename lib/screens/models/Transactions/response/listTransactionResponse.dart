import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'listTransactionResponse.g.dart';

@JsonSerializable()
class Welcome {
    @JsonKey(name: "status")
    bool? status;
    @JsonKey(name: "message")
    String? message;
    @JsonKey(name: "data")
    List<Datum>? data;
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
class Datum {
    @JsonKey(name: "id")
    int? id;
    @JsonKey(name: "domain")
    String? domain;
    @JsonKey(name: "status")
    String? status;
    @JsonKey(name: "reference")
    String? reference;
    @JsonKey(name: "amount")
    int? amount;
    @JsonKey(name: "message")
    dynamic message;
    @JsonKey(name: "gateway_response")
    String? gatewayResponse;
    @JsonKey(name: "paid_at")
    dynamic datumPaidAt;
    @JsonKey(name: "created_at")
    DateTime? datumCreatedAt;
    @JsonKey(name: "channel")
    String? channel;
    @JsonKey(name: "currency")
    String? currency;
    @JsonKey(name: "ip_address")
    String? ipAddress;
    @JsonKey(name: "metadata")
    dynamic metadata;
    @JsonKey(name: "log")
    dynamic log;
    @JsonKey(name: "fees")
    dynamic fees;
    @JsonKey(name: "fees_split")
    dynamic feesSplit;
    @JsonKey(name: "customer")
    Customer? customer;
    @JsonKey(name: "authorization")
    Map<String, bool?>? authorization;
    @JsonKey(name: "plan")
    Plan? plan;
    @JsonKey(name: "split")
    Plan? split;
    @JsonKey(name: "subaccount")
    Plan? subaccount;
    @JsonKey(name: "order_id")
    dynamic orderId;
    @JsonKey(name: "paidAt")
    dynamic paidAt;
    @JsonKey(name: "createdAt")
    DateTime? createdAt;
    @JsonKey(name: "requested_amount")
    int? requestedAmount;
    @JsonKey(name: "source")
    Source? source;
    @JsonKey(name: "pos_transaction_data")
    dynamic posTransactionData;

    Datum({
        this.id,
        this.domain,
        this.status,
        this.reference,
        this.amount,
        this.message,
        this.gatewayResponse,
        this.datumPaidAt,
        this.datumCreatedAt,
        this.channel,
        this.currency,
        this.ipAddress,
        this.metadata,
        this.log,
        this.fees,
        this.feesSplit,
        this.customer,
        this.authorization,
        this.plan,
        this.split,
        this.subaccount,
        this.orderId,
        this.paidAt,
        this.createdAt,
        this.requestedAmount,
        this.source,
        this.posTransactionData,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

    Map<String, dynamic> toJson() => _$DatumToJson(this);
}

@JsonSerializable()
class Customer {
    @JsonKey(name: "id")
    int? id;
    @JsonKey(name: "first_name")
    dynamic firstName;
    @JsonKey(name: "last_name")
    dynamic lastName;
    @JsonKey(name: "email")
    String? email;
    @JsonKey(name: "phone")
    dynamic phone;
    @JsonKey(name: "metadata")
    dynamic metadata;
    @JsonKey(name: "customer_code")
    String? customerCode;
    @JsonKey(name: "risk_action")
    String? riskAction;

    Customer({
        this.id,
        this.firstName,
        this.lastName,
        this.email,
        this.phone,
        this.metadata,
        this.customerCode,
        this.riskAction,
    });

    factory Customer.fromJson(Map<String, dynamic> json) => _$CustomerFromJson(json);

    Map<String, dynamic> toJson() => _$CustomerToJson(this);
}

@JsonSerializable()
class Plan {
    Plan();

    factory Plan.fromJson(Map<String, dynamic> json) => _$PlanFromJson(json);

    Map<String, dynamic> toJson() => _$PlanToJson(this);
}

@JsonSerializable()
class Source {
    @JsonKey(name: "source")
    String? source;
    @JsonKey(name: "type")
    String? type;
    @JsonKey(name: "identifier")
    dynamic identifier;
    @JsonKey(name: "entry_point")
    String? entryPoint;

    Source({
        this.source,
        this.type,
        this.identifier,
        this.entryPoint,
    });

    factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);

    Map<String, dynamic> toJson() => _$SourceToJson(this);
}

@JsonSerializable()
class Meta {
    @JsonKey(name: "total")
    int? total;
    @JsonKey(name: "total_volume")
    int? totalVolume;
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
        this.totalVolume,
        this.skipped,
        this.perPage,
        this.page,
        this.pageCount,
    });

    factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

    Map<String, dynamic> toJson() => _$MetaToJson(this);
}
