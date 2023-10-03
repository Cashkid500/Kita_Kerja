import 'package:kita_kerja/models/Transaction%20Split/response/listSplitsResponse.dart';

abstract class ListSplitsSource {
  Future<ListSplitsResponse> listSplits();
}