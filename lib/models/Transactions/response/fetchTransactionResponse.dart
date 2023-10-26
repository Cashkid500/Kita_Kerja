import 'package:json_annotation/json_annotation.dart';


part 'fetchTransactionResponse.g.dart';

@JsonSerializable()
class FetchTransactionResponse {
    @JsonKey(name: "status")
    bool? status;
    @JsonKey(name: "message")
    String? message;
    @JsonKey(name: "data")
    Data? data;

    FetchTransactionResponse({
        this.status,
        this.message,
        this.data,
    });

    factory FetchTransactionResponse.fromJson(Map<String, dynamic> json) => _$FetchTransactionResponseFromJson(json);

    Map<String, dynamic> toJson() => _$FetchTransactionResponseToJson(this);
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
    @JsonKey(name: "helpdesk_link")
    dynamic helpdeskLink;
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
    Authorization? plan;
    @JsonKey(name: "subaccount")
    Authorization? subaccount;
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
    Source? source;
    @JsonKey(name: "fees_breakdown")
    dynamic feesBreakdown;

    Data({
        this.id,
        this.domain,
        this.status,
        this.reference,
        this.receiptNumber,
        this.amount,
        this.message,
        this.gatewayResponse,
        this.helpdeskLink,
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
        this.subaccount,
        this.split,
        this.orderId,
        this.paidAt,
        this.createdAt,
        this.requestedAmount,
        this.posTransactionData,
        this.source,
        this.feesBreakdown,
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

@JsonSerializable()
class Source {
    @JsonKey(name: "type")
    String? type;
    @JsonKey(name: "source")
    String? source;
    @JsonKey(name: "identifier")
    dynamic identifier;

    Source({
        this.type,
        this.source,
        this.identifier,
    });

    factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);

    Map<String, dynamic> toJson() => _$SourceToJson(this);
}
