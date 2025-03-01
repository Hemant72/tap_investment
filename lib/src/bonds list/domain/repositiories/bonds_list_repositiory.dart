import 'package:fpdart/fpdart.dart';
import '../../../bonds%20list/domain/entities/bond.dart';

abstract class BondsListRepository {
  Future<Either<Exception, List<Bond>>> getBonds();
}
