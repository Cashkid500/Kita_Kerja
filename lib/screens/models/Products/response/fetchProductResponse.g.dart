// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetchProductResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Welcome _$WelcomeFromJson(Map<String, dynamic> json) => Welcome(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WelcomeToJson(Welcome instance) => <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      digitalAssets: json['digital_assets'] as List<dynamic>?,
      integration: json['integration'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      productCode: json['product_code'] as String?,
      price: json['price'] as int?,
      currency: json['currency'] as String?,
      quantity: json['quantity'] as int?,
      quantitySold: json['quantity_sold'],
      type: json['type'] as String?,
      files: json['files'],
      filePath: json['file_path'],
      isShippable: json['is_shippable'] as bool?,
      shippingFields: json['shipping_fields'] == null
          ? null
          : ShippingFields.fromJson(
              json['shipping_fields'] as Map<String, dynamic>),
      unlimited: json['unlimited'] as bool?,
      domain: json['domain'] as String?,
      active: json['active'] as bool?,
      features: json['features'],
      inStock: json['in_stock'] as bool?,
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      slug: json['slug'] as String?,
      successMessage: json['success_message'],
      redirectUrl: json['redirect_url'],
      splitCode: json['split_code'],
      notificationEmails: json['notification_emails'],
      minimumOrderable: json['minimum_orderable'] as int?,
      maximumOrderable: json['maximum_orderable'],
      lowStockAlert: json['low_stock_alert'] as bool?,
      stockThreshold: json['stock_threshold'],
      expiresIn: json['expires_in'],
      id: json['id'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'digital_assets': instance.digitalAssets,
      'integration': instance.integration,
      'name': instance.name,
      'description': instance.description,
      'product_code': instance.productCode,
      'price': instance.price,
      'currency': instance.currency,
      'quantity': instance.quantity,
      'quantity_sold': instance.quantitySold,
      'type': instance.type,
      'files': instance.files,
      'file_path': instance.filePath,
      'is_shippable': instance.isShippable,
      'shipping_fields': instance.shippingFields,
      'unlimited': instance.unlimited,
      'domain': instance.domain,
      'active': instance.active,
      'features': instance.features,
      'in_stock': instance.inStock,
      'metadata': instance.metadata,
      'slug': instance.slug,
      'success_message': instance.successMessage,
      'redirect_url': instance.redirectUrl,
      'split_code': instance.splitCode,
      'notification_emails': instance.notificationEmails,
      'minimum_orderable': instance.minimumOrderable,
      'maximum_orderable': instance.maximumOrderable,
      'low_stock_alert': instance.lowStockAlert,
      'stock_threshold': instance.stockThreshold,
      'expires_in': instance.expiresIn,
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
