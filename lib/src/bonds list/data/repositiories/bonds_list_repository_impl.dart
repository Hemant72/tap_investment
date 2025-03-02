import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/exception.dart';
import '../../../../core/network/network_info.dart';
import '../../../bonds%20list/data/datasource/bonds_list_remote_datasource.dart';
import '../../../bonds%20list/data/model/bond_model.dart';
import '../../../bonds%20list/domain/entities/bond.dart';
import '../../../bonds%20list/domain/repositiories/bonds_list_repositiory.dart';

@LazySingleton(as: BondsListRepository)
class BondsListRepositoryImpl implements BondsListRepository {
  final BondsListRemoteDataSource bondRemoteDataSource;
  final NetworkInfo networkInfo;

  BondsListRepositoryImpl(this.bondRemoteDataSource, this.networkInfo);

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
}
