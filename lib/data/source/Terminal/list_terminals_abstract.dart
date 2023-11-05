import 'package:kita_kerja/models/Terminal/response/list_terminals_response.dart';

abstract class ListTerminalsSource {
  Future<ListTerminalsResponse> listTerminals();
}
