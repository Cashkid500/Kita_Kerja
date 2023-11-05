import 'package:dartz/dartz.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Terminal/response/list_terminals_response.dart';

abstract class ListTerminalsRepo {
  Future<Either<Failure, ListTerminalsResponse>> listTerminals();
}