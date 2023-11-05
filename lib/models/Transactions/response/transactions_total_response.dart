import 'package:json_annotation/json_annotation.dart';


part 'transactions_total_response.g.dart';

@JsonSerializable()
class TransactionsTotalResponse {
    @JsonKey(name: "status")
    bool? status;
    @JsonKey(name: "message")
    String? message;
    @JsonKey(name: "data")
    Data? data;

    TransactionsTotalResponse({
        this.status,
        this.message,
        this.data,
    });

    factory TransactionsTotalResponse.fromJson(Map<String, dynamic> json) => _$TransactionsTotalResponseFromJson(json);

    Map<String, dynamic> toJson() => _$TransactionsTotalResponseToJson(this);
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
