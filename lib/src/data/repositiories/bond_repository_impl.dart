import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:tap_investment/core/error/exception.dart';
import 'package:tap_investment/core/network/network_info.dart';
import 'package:tap_investment/src/data/datasource/bond_details_remote_datasource.dart';
import 'package:tap_investment/src/data/datasource/bond_remote_datasource.dart';
import 'package:tap_investment/src/data/model/bond_detail_model.dart';
import 'package:tap_investment/src/data/model/bond_model.dart';
import 'package:tap_investment/src/domain/entities/bond.dart';
import 'package:tap_investment/src/domain/entities/bond_detail.dart';

import 'package:tap_investment/src/domain/repositiories/bond_repositiory.dart';

@LazySingleton(as: BondRepository)
class BondRepositoryImpl implements BondRepository {
  final BondRemoteDataSource bondRemoteDataSource;
  final BondDetailRemoteDataSource bondDetailRemoteDataSource;
  final NetworkInfo networkInfo;

  BondRepositoryImpl(
    this.bondRemoteDataSource,
    this.bondDetailRemoteDataSource,
    this.networkInfo,
  );

  @override
  Future<Either<Exception, List<Bond>>> getBonds() async {
    if (await networkInfo.isConnected) {
      try {
        final remoteBonds = await bondRemoteDataSource.getBonds();
        final bonds = remoteBonds.map((model) => model.toDomain()).toList();
        return Right(bonds);
      } on ServerException catch (e) {
        return Left(e);
      }
    } else {
      return Left(NetworkException(message: 'No internet connection'));
    }
  }

  @override
  Future<Either<Exception, BondDetail>> getBondDetail() async {
    if (await networkInfo.isConnected) {
      try {
        final remoteBondDetail =
            await bondDetailRemoteDataSource.getBondDetail();
        return Right(remoteBondDetail.toDomain());
      } on ServerException catch (e) {
        return Left(e);
      }
    } else {
      return Left(NetworkException(message: 'No internet connection'));
    }
  }
}
