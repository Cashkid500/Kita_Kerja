// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'createProductResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateProductResponse _$CreateProductResponseFromJson(
        Map<String, dynamic> json) =>
    CreateProductResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateProductResponseToJson(
        CreateProductResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      variantsOptions: json['variants_options'] as List<dynamic>?,
      variants: json['variants'] as List<dynamic>?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      currency: json['currency'] as String?,
      price: json['price'] as int?,
      quantity: json['quantity'] as int?,
      unlimited: json['unlimited'] as bool?,
      integration: json['integration'] as int?,
      domain: json['domain'] as String?,
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      slug: json['slug'] as String?,
      productCode: json['product_code'] as String?,
      quantitySold: json['quantity_sold'] as int?,
      type: json['type'] as String?,
      isShippable: json['is_shippable'] as bool?,
      shippingFields: json['shipping_fields'] == null
          ? null
          : ShippingFields.fromJson(
              json['shipping_fields'] as Map<String, dynamic>),
      active: json['active'] as bool?,
      deletedAt: json['deleted_at'],
      inStock: json['in_stock'] as bool?,
      minimumOrderable: json['minimum_orderable'] as int?,
      maximumOrderable: json['maximum_orderable'],
      lowStockAlert: json['low_stock_alert'] as bool?,
      id: json['id'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'variants_options': instance.variantsOptions,
      'variants': instance.variants,
      'name': instance.name,
      'description': instance.description,
      'currency': instance.currency,
      'price': instance.price,
      'quantity': instance.quantity,
      'unlimited': instance.unlimited,
      'integration': instance.integration,
      'domain': instance.domain,
      'metadata': instance.metadata,
      'slug': instance.slug,
      'product_code': instance.productCode,
      'quantity_sold': instance.quantitySold,
      'type': instance.type,
      'is_shippable': instance.isShippable,
      'shipping_fields': instance.shippingFields,
      'active': instance.active,
      'deleted_at': instance.deletedAt,
      'in_stock': instance.inStock,
      'minimum_orderable': instance.minimumOrderable,
      'maximum_orderable': instance.maximumOrderable,
      'low_stock_alert': instance.lowStockAlert,
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

Metadata _$MetadataFromJson(Map<String, dynamic> json) => Metadata(
      backgroundColor: json['background_color'] as String?,
    );

Map<String, dynamic> _$MetadataToJson(Metadata instance) => <String, dynamic>{
      'background_color': instance.backgroundColor,
    };

ShippingFields _$ShippingFieldsFromJson(Map<String, dynamic> json) =>
    ShippingFields(
      deliveryNote: json['delivery_note'] as String?,
    );

Map<String, dynamic> _$ShippingFieldsToJson(ShippingFields instance) =>
    <String, dynamic>{
      'delivery_note': instance.deliveryNote,
    };
