import 'package:json_annotation/json_annotation.dart';


part 'createProductResponse.g.dart';

@JsonSerializable()
class CreateProductResponse {
    @JsonKey(name: "status")
    bool? status;
    @JsonKey(name: "message")
    String? message;
    @JsonKey(name: "data")
    Data? data;

    CreateProductResponse({
        this.status,
        this.message,
        this.data,
    });

    factory CreateProductResponse.fromJson(Map<String, dynamic> json) => _$CreateProductResponseFromJson(json);

    Map<String, dynamic> toJson() => _$CreateProductResponseToJson(this);
}

@JsonSerializable()
class Data {
    @JsonKey(name: "variants_options")
    List<dynamic>? variantsOptions;
    @JsonKey(name: "variants")
    List<dynamic>? variants;
    @JsonKey(name: "name")
    String? name;
    @JsonKey(name: "description")
    String? description;
    @JsonKey(name: "currency")
    String? currency;
    @JsonKey(name: "price")
    int? price;
    @JsonKey(name: "quantity")
    int? quantity;
    @JsonKey(name: "unlimited")
    bool? unlimited;
    @JsonKey(name: "integration")
    int? integration;
    @JsonKey(name: "domain")
    String? domain;
    @JsonKey(name: "metadata")
    Metadata? metadata;
    @JsonKey(name: "slug")
    String? slug;
    @JsonKey(name: "product_code")
    String? productCode;
    @JsonKey(name: "quantity_sold")
    int? quantitySold;
    @JsonKey(name: "type")
    String? type;
    @JsonKey(name: "is_shippable")
    bool? isShippable;
    @JsonKey(name: "shipping_fields")
    ShippingFields? shippingFields;
    @JsonKey(name: "active")
    bool? active;
    @JsonKey(name: "deleted_at")
    dynamic deletedAt;
    @JsonKey(name: "in_stock")
    bool? inStock;
    @JsonKey(name: "minimum_orderable")
    int? minimumOrderable;
    @JsonKey(name: "maximum_orderable")
    dynamic maximumOrderable;
    @JsonKey(name: "low_stock_alert")
    bool? lowStockAlert;
    @JsonKey(name: "id")
    int? id;
    @JsonKey(name: "createdAt")
    DateTime? createdAt;
    @JsonKey(name: "updatedAt")
    DateTime? updatedAt;

    Data({
        this.variantsOptions,
        this.variants,
        this.name,
        this.description,
        this.currency,
        this.price,
        this.quantity,
        this.unlimited,
        this.integration,
        this.domain,
        this.metadata,
        this.slug,
        this.productCode,
        this.quantitySold,
        this.type,
        this.isShippable,
        this.shippingFields,
        this.active,
        this.deletedAt,
        this.inStock,
        this.minimumOrderable,
        this.maximumOrderable,
        this.lowStockAlert,
        this.id,
        this.createdAt,
        this.updatedAt,
    });

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

    Map<String, dynamic> toJson() => _$DataToJson(this);
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
