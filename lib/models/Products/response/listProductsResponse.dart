import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'listProductsResponse.g.dart';

@JsonSerializable()
class ListProductsResponse {
    @JsonKey(name: "status")
    bool? status;
    @JsonKey(name: "message")
    String? message;
    @JsonKey(name: "data")
    List<Datum>? data;
    @JsonKey(name: "meta")
    Meta? meta;

    ListProductsResponse({
        this.status,
        this.message,
        this.data,
        this.meta,
    });

    factory ListProductsResponse.fromJson(Map<String, dynamic> json) => _$ListProductsResponseFromJson(json);

    Map<String, dynamic> toJson() => _$ListProductsResponseToJson(this);
}

@JsonSerializable()
class Datum {
    @JsonKey(name: "id")
    int? id;
    @JsonKey(name: "name")
    String? name;
    @JsonKey(name: "description")
    String? description;
    @JsonKey(name: "product_code")
    String? productCode;
    @JsonKey(name: "slug")
    String? slug;
    @JsonKey(name: "currency")
    String? currency;
    @JsonKey(name: "price")
    int? price;
    @JsonKey(name: "quantity")
    int? quantity;
    @JsonKey(name: "quantity_sold")
    int? quantitySold;
    @JsonKey(name: "active")
    bool? active;
    @JsonKey(name: "domain")
    String? domain;
    @JsonKey(name: "type")
    String? type;
    @JsonKey(name: "in_stock")
    bool? inStock;
    @JsonKey(name: "unlimited")
    bool? unlimited;
    @JsonKey(name: "metadata")
    Metadata? metadata;
    @JsonKey(name: "files")
    List<dynamic>? files;
    @JsonKey(name: "success_message")
    dynamic successMessage;
    @JsonKey(name: "redirect_url")
    dynamic redirectUrl;
    @JsonKey(name: "split_code")
    dynamic splitCode;
    @JsonKey(name: "notification_emails")
    dynamic notificationEmails;
    @JsonKey(name: "minimum_orderable")
    int? minimumOrderable;
    @JsonKey(name: "maximum_orderable")
    dynamic maximumOrderable;
    @JsonKey(name: "createdAt")
    DateTime? createdAt;
    @JsonKey(name: "updatedAt")
    DateTime? updatedAt;
    @JsonKey(name: "digital_assets")
    List<dynamic>? digitalAssets;
    @JsonKey(name: "variant_options")
    List<dynamic>? variantOptions;
    @JsonKey(name: "is_shippable")
    bool? isShippable;
    @JsonKey(name: "shipping_fields")
    ShippingFields? shippingFields;
    @JsonKey(name: "integration")
    int? integration;
    @JsonKey(name: "low_stock_alert")
    int? lowStockAlert;

    Datum({
        this.id,
        this.name,
        this.description,
        this.productCode,
        this.slug,
        this.currency,
        this.price,
        this.quantity,
        this.quantitySold,
        this.active,
        this.domain,
        this.type,
        this.inStock,
        this.unlimited,
        this.metadata,
        this.files,
        this.successMessage,
        this.redirectUrl,
        this.splitCode,
        this.notificationEmails,
        this.minimumOrderable,
        this.maximumOrderable,
        this.createdAt,
        this.updatedAt,
        this.digitalAssets,
        this.variantOptions,
        this.isShippable,
        this.shippingFields,
        this.integration,
        this.lowStockAlert,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

    Map<String, dynamic> toJson() => _$DatumToJson(this);
}

@JsonSerializable()
class Metadata {
    @JsonKey(name: "background_color")
    String? backgroundColor;

    Metadata({
        this.backgroundColor,
    });

    factory Metadata.fromJson(Map<String, dynamic> json) => _$MetadataFromJson(json);

    Map<String, dynamic> toJson() => _$MetadataToJson(this);
}

@JsonSerializable()
class ShippingFields {
    @JsonKey(name: "delivery_note")
    String? deliveryNote;

    ShippingFields({
        this.deliveryNote,
    });

    factory ShippingFields.fromJson(Map<String, dynamic> json) => _$ShippingFieldsFromJson(json);

    Map<String, dynamic> toJson() => _$ShippingFieldsToJson(this);
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
