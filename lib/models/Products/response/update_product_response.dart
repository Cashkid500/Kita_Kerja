import 'package:json_annotation/json_annotation.dart';


part 'update_product_response.g.dart';

@JsonSerializable()
class UpdateProductResponse {
    @JsonKey(name: "status")
    bool? status;
    @JsonKey(name: "message")
    String? message;
    @JsonKey(name: "data")
    Data? data;

    UpdateProductResponse({
        this.status,
        this.message,
        this.data,
    });

    factory UpdateProductResponse.fromJson(Map<String, dynamic> json) => _$UpdateProductResponseFromJson(json);

    Map<String, dynamic> toJson() => _$UpdateProductResponseToJson(this);
}

@JsonSerializable()
class Data {
    @JsonKey(name: "name")
    String? name;
    @JsonKey(name: "description")
    String? description;
    @JsonKey(name: "product_code")
    String? productCode;
    @JsonKey(name: "price")
    int? price;
    @JsonKey(name: "currency")
    String? currency;
    @JsonKey(name: "quantity")
    int? quantity;
    @JsonKey(name: "quantity_sold")
    int? quantitySold;
    @JsonKey(name: "type")
    String? type;
    @JsonKey(name: "files")
    dynamic files;
    @JsonKey(name: "file_path")
    dynamic filePath;
    @JsonKey(name: "is_shippable")
    bool? isShippable;
    @JsonKey(name: "shipping_fields")
    ShippingFields? shippingFields;
    @JsonKey(name: "unlimited")
    bool? unlimited;
    @JsonKey(name: "domain")
    String? domain;
    @JsonKey(name: "active")
    bool? active;
    @JsonKey(name: "features")
    dynamic features;
    @JsonKey(name: "in_stock")
    bool? inStock;
    @JsonKey(name: "metadata")
    Metadata? metadata;
    @JsonKey(name: "slug")
    String? slug;
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
    @JsonKey(name: "low_stock_alert")
    bool? lowStockAlert;
    @JsonKey(name: "stock_threshold")
    dynamic stockThreshold;
    @JsonKey(name: "expires_in")
    dynamic expiresIn;
    @JsonKey(name: "id")
    int? id;
    @JsonKey(name: "integration")
    int? integration;
    @JsonKey(name: "createdAt")
    DateTime? createdAt;
    @JsonKey(name: "updatedAt")
    DateTime? updatedAt;

    Data({
        this.name,
        this.description,
        this.productCode,
        this.price,
        this.currency,
        this.quantity,
        this.quantitySold,
        this.type,
        this.files,
        this.filePath,
        this.isShippable,
        this.shippingFields,
        this.unlimited,
        this.domain,
        this.active,
        this.features,
        this.inStock,
        this.metadata,
        this.slug,
        this.successMessage,
        this.redirectUrl,
        this.splitCode,
        this.notificationEmails,
        this.minimumOrderable,
        this.maximumOrderable,
        this.lowStockAlert,
        this.stockThreshold,
        this.expiresIn,
        this.id,
        this.integration,
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
