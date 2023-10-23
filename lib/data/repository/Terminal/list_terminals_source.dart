import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/core/network/network_info.dart';
import 'package:kita_kerja/core/runner/service.dart';
import 'package:kita_kerja/data/repository/Terminal/list_terminals_abstract.dart';
import 'package:kita_kerja/data/source/Terminal/listTerminals_abstract.dart';
import 'package:kita_kerja/models/Terminal/response/listTerminalsResponse.dart';
import 'package:kita_kerja/providers/network_provider.dart';
import 'package:kita_kerja/providers/source_provider.dart';

class ListTerminalsRepoImpl implements ListTerminalsRepo {
  final NetworkInfo list;
  final ListTerminalsSource terminals;

  ListTerminalsRepoImpl({required Ref ref})
      : terminals = ref.read(listTerminalsSourceProvider),
        list = ref.read(networkInfoProvider);

  @override
  Future<Either<Failure, ListTerminalsResponse>> listTerminals() async {
    ServiceRunner<Failure, ListTerminalsResponse> sR = ServiceRunner(list);

    return sR.tryRemoteandCatch(
        call: terminals.listTerminals(), errorTitle: "No Terminal Listed");
  }
}
