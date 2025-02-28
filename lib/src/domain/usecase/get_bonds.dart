import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:tap_investment/src/domain/entities/bond.dart';
import 'package:tap_investment/src/domain/repositiories/bond_repositiory.dart';

@lazySingleton
class GetBonds {
  final BondRepository repository;

  GetBonds(this.repository);

  Future<Either<Exception, List<Bond>>> call() async {
    return await repository.getBonds();
  }
}
