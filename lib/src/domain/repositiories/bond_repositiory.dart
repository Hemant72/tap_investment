import 'package:fpdart/fpdart.dart';
import 'package:tap_investment/src/domain/entities/bond.dart';
import 'package:tap_investment/src/domain/entities/bond_detail.dart';

abstract class BondRepository {
  Future<Either<Exception, List<Bond>>> getBonds();
  Future<Either<Exception, BondDetail>> getBondDetail();
}
