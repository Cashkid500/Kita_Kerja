import 'package:dartz/dartz.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Terminal/response/listTerminalsResponse.dart';

abstract class ListTerminalsRepo {
  Future<Either<Failure, ListTerminalsResponse>> listTerminals();
}