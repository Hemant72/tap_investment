import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../bond%20details/domain/entities/bond_detail.dart';
import '../../../bond%20details/domain/repositiories/bond_details_repositiory.dart';

@lazySingleton
class GetBondDetail {
  final BondDetailsRepository repository;

  GetBondDetail(this.repository);

  Future<Either<Exception, BondDetail>> call() async {
    return await repository.getBondDetail();
  }
}
