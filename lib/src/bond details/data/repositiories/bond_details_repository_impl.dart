import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/exception.dart';
import '../../../../core/network/network_info.dart';
import '../../../bond%20details/data/datasource/bond_details_remote_datasource.dart';
import '../../../bond%20details/data/model/bond_detail_model.dart';
import '../../../bond%20details/domain/entities/bond_detail.dart';
import '../../../bond%20details/domain/repositiories/bond_details_repositiory.dart';

@LazySingleton(as: BondDetailsRepository)
class BondDetailsRepositoryImpl implements BondDetailsRepository {
  final BondDetailRemoteDataSource bondDetailRemoteDataSource;
  final NetworkInfo networkInfo;

  BondDetailsRepositoryImpl(this.bondDetailRemoteDataSource, this.networkInfo);

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
