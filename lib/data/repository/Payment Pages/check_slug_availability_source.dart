import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/core/network/network_info.dart';
import 'package:kita_kerja/core/runner/service.dart';
import 'package:kita_kerja/data/repository/Payment%20Pages/check_slug_availability_abstract.dart';
import 'package:kita_kerja/data/source/Payment%20Pages/checkSlugAvailability_abstract.dart';
import 'package:kita_kerja/models/Payment%20Pages/response/checkSlugAvailabilityResponse.dart';
import 'package:kita_kerja/providers/network_provider.dart';
import 'package:kita_kerja/providers/source_provider.dart';

class CheckSlugAvailabilityRepoImpl implements CheckSlugAvailabilityRepo {
  final NetworkInfo checkSlug;
  final CheckSlugAvailabilitySource availability;

  CheckSlugAvailabilityRepoImpl({required Ref ref})
      : availability = ref.read(checkSlugSourceProvider as ProviderListenable<CheckSlugAvailabilitySource>),
        checkSlug = ref.read(networkInfoProvider);

  @override
  Future<Either<Failure, CheckSlugAvailabilityResponse>>
      checkSlugAvailability()async{
    ServiceRunner<Failure, CheckSlugAvailabilityResponse> sR =
        ServiceRunner(checkSlug);

    return sR.tryRemoteandCatch(
        call: availability.checkSlugAvailability(),
        errorTitle: "Slug Unavailable");
  }  
}
