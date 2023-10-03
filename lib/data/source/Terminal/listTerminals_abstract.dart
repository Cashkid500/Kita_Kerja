import 'package:kita_kerja/models/Terminal/response/listTerminalsResponse.dart';

abstract class ListTerminalsSource {
  Future<ListTerminalsResponse> listTerminals();
}
