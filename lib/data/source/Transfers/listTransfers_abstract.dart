import 'package:kita_kerja/models/Transfers/response/listTransfersResponse.dart';

abstract class ListTransfersSource {
  Future<ListTransfersResponse> listTransfers();
}