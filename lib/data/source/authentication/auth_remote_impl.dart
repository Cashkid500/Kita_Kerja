import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:kita_kerja/data/source/authentication/auth_remote_abstract.dart';
import 'package:kita_kerja/models/Transactions/body/initializeTransaction.dart';
import 'package:kita_kerja/models/Transactions/response/initializeTransactionResponse.dart';

class AuthRemoteImplementation implements AuthSource {
  @override
  Future<InitializeTransactionResponse> initialize({
    required InitializeTransaction payload,
  }) async {
    String url = "https://api.paystack.co/transaction/initialize";
    var body = {
      "email": payload.email,
      "amount": payload.amount
    };
    http.Response response = await http.post(
      Uri.parse(url),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
      },
      body: json.encode(body),
    );
    final data = await json.decode(response.body);
    try {
      InitializeTransactionResponse apiResponse =
          InitializeTransactionResponse.fromJson(data);
      return apiResponse;
    } on Exception catch (_) {
      rethrow;
    }
  }
}
