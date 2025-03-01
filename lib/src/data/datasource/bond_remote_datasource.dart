import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tap_investment/core/const/api_constants.dart';
import 'package:tap_investment/core/error/exception.dart';
import 'package:tap_investment/src/data/model/bond_model.dart';

abstract class BondRemoteDataSource {
  Future<List<BondModel>> getBonds();
}

@LazySingleton(as: BondRemoteDataSource)
class BondRemoteDataSourceImpl implements BondRemoteDataSource {
  final Dio dio;

  BondRemoteDataSourceImpl(this.dio);

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
