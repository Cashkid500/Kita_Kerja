import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/core/network/network_info.dart';
import 'package:kita_kerja/core/runner/service.dart';
import 'package:kita_kerja/data/repository/Payment%20Pages/check_slug_availability_abstract.dart';
import 'package:kita_kerja/data/source/Payment%20Pages/CheckSlugAvailability_abstract.dart';
import 'package:kita_kerja/models/Payment%20Pages/response/check_slug_availability_response.dart';
import 'package:kita_kerja/providers/network_provider.dart';
import 'package:kita_kerja/providers/source_provider.dart';

class CheckSlugAvailabilityRepoImpl implements CheckSlugAvailabilityRepo {
  final NetworkInfo check;
  final CheckSlugAvailabilitySource slug;

  CheckSlugAvailabilityRepoImpl({required Ref ref})
      : slug = ref.read(checkSlugSourceProvider),
        check = ref.read(networkInfoProvider);

  @override
  Future<Either<Failure, CheckSlugAvailabilityResponse>>
      checkSlugAvailability() async {
    ServiceRunner<Failure, CheckSlugAvailabilityResponse> sR =
        ServiceRunner(check);

    return sR.tryRemoteandCatch(
        call: slug.checkSlugAvailability(), errorTitle: "Slug Unavailable");
  }
}
