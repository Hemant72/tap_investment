import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/const/api_constants.dart';
import '../../../../core/error/exception.dart';
import '../../../bonds%20list/data/model/bond_model.dart';

abstract class BondsListRemoteDataSource {
  Future<List<BondModel>> getBonds();
}

@LazySingleton(as: BondsListRemoteDataSource)
class BondsListRemoteDataSourceImpl implements BondsListRemoteDataSource {
  final Dio dio;

  BondsListRemoteDataSourceImpl(this.dio);

  @override
  Future<List<BondModel>> getBonds() async {
    try {
      final response = await dio.get(ApiConstants.bondsListUrl);
      if (response.statusCode == 200) {
        final List<dynamic> bondList = response.data['data'];
        return bondList.map((bond) => BondModel.fromJson(bond)).toList();
      } else {
        throw ServerException(message: 'Failed to load bonds');
      }
    } on DioException catch (e) {
      throw ServerException(message: e.message);
    }
  }
}
