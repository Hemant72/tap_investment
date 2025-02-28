import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:tap_investment/src/domain/entities/bond_detail.dart';
import 'package:tap_investment/src/domain/repositiories/bond_repositiory.dart';

@lazySingleton
class GetBondDetail {
  final BondRepository repository;

  GetBondDetail(this.repository);

  Future<Either<Exception, BondDetail>> call() async {
    return await repository.getBondDetail();
  }
}
