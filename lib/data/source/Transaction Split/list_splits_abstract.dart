import 'package:kita_kerja/models/Transaction%20Split/response/list_splits_response.dart';

abstract class ListSplitsSource {
  Future<ListSplitsResponse> listSplits();
}