import 'package:fpdart/fpdart.dart';
import 'package:tap_investment/src/bonds%20list/domain/entities/bond.dart';

abstract class BondsListRepository {
  Future<Either<Exception, List<Bond>>> getBonds();
}
