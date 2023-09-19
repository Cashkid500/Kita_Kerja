// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listTransactionResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Welcome _$WelcomeFromJson(Map<String, dynamic> json) => Welcome(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WelcomeToJson(Welcome instance) => <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'meta': instance.meta,
    };

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      id: json['id'] as int?,
      domain: json['domain'] as String?,
      status: json['status'] as String?,
      reference: json['reference'] as String?,
      amount: json['amount'] as int?,
      message: json['message'],
      gatewayResponse: json['gateway_response'] as String?,
      datumPaidAt: json['paid_at'],
      datumCreatedAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      channel: json['channel'] as String?,
      currency: json['currency'] as String?,
      ipAddress: json['ip_address'] as String?,
      metadata: json['metadata'],
      log: json['log'],
      fees: json['fees'],
      feesSplit: json['fees_split'],
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
      authorization: (json['authorization'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as bool?),
      ),
      plan: json['plan'] == null
          ? null
          : Plan.fromJson(json['plan'] as Map<String, dynamic>),
      split: json['split'] == null
          ? null
          : Plan.fromJson(json['split'] as Map<String, dynamic>),
      subaccount: json['subaccount'] == null
          ? null
          : Plan.fromJson(json['subaccount'] as Map<String, dynamic>),
      orderId: json['order_id'],
      paidAt: json['paidAt'],
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      requestedAmount: json['requested_amount'] as int?,
      source: json['source'] == null
          ? null
          : Source.fromJson(json['source'] as Map<String, dynamic>),
      posTransactionData: json['pos_transaction_data'],
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'id': instance.id,
      'domain': instance.domain,
      'status': instance.status,
      'reference': instance.reference,
      'amount': instance.amount,
      'message': instance.message,
      'gateway_response': instance.gatewayResponse,
      'paid_at': instance.datumPaidAt,
      'created_at': instance.datumCreatedAt?.toIso8601String(),
      'channel': instance.channel,
      'currency': instance.currency,
      'ip_address': instance.ipAddress,
      'metadata': instance.metadata,
      'log': instance.log,
      'fees': instance.fees,
      'fees_split': instance.feesSplit,
      'customer': instance.customer,
      'authorization': instance.authorization,
      'plan': instance.plan,
      'split': instance.split,
      'subaccount': instance.subaccount,
      'order_id': instance.orderId,
      'paidAt': instance.paidAt,
      'createdAt': instance.createdAt?.toIso8601String(),
      'requested_amount': instance.requestedAmount,
      'source': instance.source,
      'pos_transaction_data': instance.posTransactionData,
    };

Customer _$CustomerFromJson(Map<String, dynamic> json) => Customer(
      id: json['id'] as int?,
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'] as String?,
      phone: json['phone'],
      metadata: json['metadata'],
      customerCode: json['customer_code'] as String?,
      riskAction: json['risk_action'] as String?,
    );

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'metadata': instance.metadata,
      'customer_code': instance.customerCode,
      'risk_action': instance.riskAction,
    };

Plan _$PlanFromJson(Map<String, dynamic> json) => Plan();

Map<String, dynamic> _$PlanToJson(Plan instance) => <String, dynamic>{};

Source _$SourceFromJson(Map<String, dynamic> json) => Source(
      source: json['source'] as String?,
      type: json['type'] as String?,
      identifier: json['identifier'],
      entryPoint: json['entry_point'] as String?,
    );

Map<String, dynamic> _$SourceToJson(Source instance) => <String, dynamic>{
      'source': instance.source,
      'type': instance.type,
      'identifier': instance.identifier,
      'entry_point': instance.entryPoint,
    };

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      total: json['total'] as int?,
      totalVolume: json['total_volume'] as int?,
      skipped: json['skipped'] as int?,
      perPage: json['perPage'] as int?,
      page: json['page'] as int?,
      pageCount: json['pageCount'] as int?,
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'total': instance.total,
      'total_volume': instance.totalVolume,
      'skipped': instance.skipped,
      'perPage': instance.perPage,
      'page': instance.page,
      'pageCount': instance.pageCount,
    };
