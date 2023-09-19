import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'transactionsTotalResponse.g.dart';

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
    @JsonKey(name: "total_transactions")
    int? totalTransactions;
    @JsonKey(name: "total_volume")
    int? totalVolume;
    @JsonKey(name: "total_volume_by_currency")
    List<ByCurrency>? totalVolumeByCurrency;
    @JsonKey(name: "pending_transfers")
    int? pendingTransfers;
    @JsonKey(name: "pending_transfers_by_currency")
    List<ByCurrency>? pendingTransfersByCurrency;

    Data({
        this.totalTransactions,
        this.totalVolume,
        this.totalVolumeByCurrency,
        this.pendingTransfers,
        this.pendingTransfersByCurrency,
    });

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

    Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class ByCurrency {
    @JsonKey(name: "currency")
    String? currency;
    @JsonKey(name: "amount")
    int? amount;

    ByCurrency({
        this.currency,
        this.amount,
    });

    factory ByCurrency.fromJson(Map<String, dynamic> json) => _$ByCurrencyFromJson(json);

    Map<String, dynamic> toJson() => _$ByCurrencyToJson(this);
}
