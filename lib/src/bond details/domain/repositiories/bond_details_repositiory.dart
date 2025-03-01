import 'package:fpdart/fpdart.dart';
import 'package:tap_investment/src/bond%20details/domain/entities/bond_detail.dart';

abstract class BondDetailsRepository {
  Future<Either<Exception, BondDetail>> getBondDetail();
}
