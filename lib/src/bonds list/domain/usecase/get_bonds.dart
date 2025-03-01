import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:tap_investment/src/bonds%20list/domain/entities/bond.dart';
import 'package:tap_investment/src/bonds%20list/domain/repositiories/bonds_list_repositiory.dart';

@lazySingleton
class GetBonds {
  final BondsListRepository repository;

  GetBonds(this.repository);

  Future<Either<Exception, List<Bond>>> call() async {
    return await repository.getBonds();
  }
}
