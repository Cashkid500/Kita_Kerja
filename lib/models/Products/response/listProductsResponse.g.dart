// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listProductsResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListProductsResponse _$ListProductsResponseFromJson(
        Map<String, dynamic> json) =>
    ListProductsResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ListProductsResponseToJson(
        ListProductsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'meta': instance.meta,
    };

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      productCode: json['product_code'] as String?,
      slug: json['slug'] as String?,
      currency: json['currency'] as String?,
      price: json['price'] as int?,
      quantity: json['quantity'] as int?,
      quantitySold: json['quantity_sold'] as int?,
      active: json['active'] as bool?,
      domain: json['domain'] as String?,
      type: json['type'] as String?,
      inStock: json['in_stock'] as bool?,
      unlimited: json['unlimited'] as bool?,
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      files: json['files'] as List<dynamic>?,
      successMessage: json['success_message'],
      redirectUrl: json['redirect_url'],
      splitCode: json['split_code'],
      notificationEmails: json['notification_emails'],
      minimumOrderable: json['minimum_orderable'] as int?,
      maximumOrderable: json['maximum_orderable'],
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      digitalAssets: json['digital_assets'] as List<dynamic>?,
      variantOptions: json['variant_options'] as List<dynamic>?,
      isShippable: json['is_shippable'] as bool?,
      shippingFields: json['shipping_fields'] == null
          ? null
          : ShippingFields.fromJson(
              json['shipping_fields'] as Map<String, dynamic>),
      integration: json['integration'] as int?,
      lowStockAlert: json['low_stock_alert'] as int?,
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'product_code': instance.productCode,
      'slug': instance.slug,
      'currency': instance.currency,
      'price': instance.price,
      'quantity': instance.quantity,
      'quantity_sold': instance.quantitySold,
      'active': instance.active,
      'domain': instance.domain,
      'type': instance.type,
      'in_stock': instance.inStock,
      'unlimited': instance.unlimited,
      'metadata': instance.metadata,
      'files': instance.files,
      'success_message': instance.successMessage,
      'redirect_url': instance.redirectUrl,
      'split_code': instance.splitCode,
      'notification_emails': instance.notificationEmails,
      'minimum_orderable': instance.minimumOrderable,
      'maximum_orderable': instance.maximumOrderable,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'digital_assets': instance.digitalAssets,
      'variant_options': instance.variantOptions,
      'is_shippable': instance.isShippable,
      'shipping_fields': instance.shippingFields,
      'integration': instance.integration,
      'low_stock_alert': instance.lowStockAlert,
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

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      total: json['total'] as int?,
      skipped: json['skipped'] as int?,
      perPage: json['perPage'] as int?,
      page: json['page'] as int?,
      pageCount: json['pageCount'] as int?,
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'total': instance.total,
      'skipped': instance.skipped,
      'perPage': instance.perPage,
      'page': instance.page,
      'pageCount': instance.pageCount,
    };
