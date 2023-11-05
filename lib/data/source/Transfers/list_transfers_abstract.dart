import 'package:kita_kerja/models/Transfers/response/list_transfers_response.dart';

abstract class ListTransfersSource {
  Future<ListTransfersResponse> listTransfers();
}