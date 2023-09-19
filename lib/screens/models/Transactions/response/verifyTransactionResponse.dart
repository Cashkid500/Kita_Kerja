import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'verifyTransactionResponse.g.dart';

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
    @JsonKey(name: "id")
    int? id;
    @JsonKey(name: "domain")
    String? domain;
    @JsonKey(name: "status")
    String? status;
    @JsonKey(name: "reference")
    String? reference;
    @JsonKey(name: "receipt_number")
    dynamic receiptNumber;
    @JsonKey(name: "amount")
    int? amount;
    @JsonKey(name: "message")
    dynamic message;
    @JsonKey(name: "gateway_response")
    String? gatewayResponse;
    @JsonKey(name: "paid_at")
    dynamic dataPaidAt;
    @JsonKey(name: "created_at")
    DateTime? dataCreatedAt;
    @JsonKey(name: "channel")
    String? channel;
    @JsonKey(name: "currency")
    String? currency;
    @JsonKey(name: "ip_address")
    String? ipAddress;
    @JsonKey(name: "metadata")
    String? metadata;
    @JsonKey(name: "log")
    dynamic log;
    @JsonKey(name: "fees")
    dynamic fees;
    @JsonKey(name: "fees_split")
    dynamic feesSplit;
    @JsonKey(name: "authorization")
    Authorization? authorization;
    @JsonKey(name: "customer")
    Customer? customer;
    @JsonKey(name: "plan")
    dynamic plan;
    @JsonKey(name: "split")
    Authorization? split;
    @JsonKey(name: "order_id")
    dynamic orderId;
    @JsonKey(name: "paidAt")
    dynamic paidAt;
    @JsonKey(name: "createdAt")
    DateTime? createdAt;
    @JsonKey(name: "requested_amount")
    int? requestedAmount;
    @JsonKey(name: "pos_transaction_data")
    dynamic posTransactionData;
    @JsonKey(name: "source")
    dynamic source;
    @JsonKey(name: "fees_breakdown")
    dynamic feesBreakdown;
    @JsonKey(name: "transaction_date")
    DateTime? transactionDate;
    @JsonKey(name: "plan_object")
    Authorization? planObject;
    @JsonKey(name: "subaccount")
    Authorization? subaccount;

    Data({
        this.id,
        this.domain,
        this.status,
        this.reference,
        this.receiptNumber,
        this.amount,
        this.message,
        this.gatewayResponse,
        this.dataPaidAt,
        this.dataCreatedAt,
        this.channel,
        this.currency,
        this.ipAddress,
        this.metadata,
        this.log,
        this.fees,
        this.feesSplit,
        this.authorization,
        this.customer,
        this.plan,
        this.split,
        this.orderId,
        this.paidAt,
        this.createdAt,
        this.requestedAmount,
        this.posTransactionData,
        this.source,
        this.feesBreakdown,
        this.transactionDate,
        this.planObject,
        this.subaccount,
    });

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

    Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Authorization {
    Authorization();

    factory Authorization.fromJson(Map<String, dynamic> json) => _$AuthorizationFromJson(json);

    Map<String, dynamic> toJson() => _$AuthorizationToJson(this);
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
    @JsonKey(name: "customer_code")
    String? customerCode;
    @JsonKey(name: "phone")
    dynamic phone;
    @JsonKey(name: "metadata")
    dynamic metadata;
    @JsonKey(name: "risk_action")
    String? riskAction;
    @JsonKey(name: "international_format_phone")
    dynamic internationalFormatPhone;

    Customer({
        this.id,
        this.firstName,
        this.lastName,
        this.email,
        this.customerCode,
        this.phone,
        this.metadata,
        this.riskAction,
        this.internationalFormatPhone,
    });

    factory Customer.fromJson(Map<String, dynamic> json) => _$CustomerFromJson(json);

    Map<String, dynamic> toJson() => _$CustomerToJson(this);
}
