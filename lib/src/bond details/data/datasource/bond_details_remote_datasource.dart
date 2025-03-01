import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tap_investment/core/const/api_constants.dart';
import 'package:tap_investment/core/error/exception.dart';
import 'package:tap_investment/src/bond%20details/data/model/bond_detail_model.dart';

abstract class BondDetailRemoteDataSource {
  Future<BondDetailModel> getBondDetail();
}

@LazySingleton(as: BondDetailRemoteDataSource)
class BondDetailRemoteDataSourceImpl implements BondDetailRemoteDataSource {
  final Dio dio;

  BondDetailRemoteDataSourceImpl(this.dio);

  @override
  Future<BondDetailModel> getBondDetail() async {
    try {
      final response = await dio.get(ApiConstants.bondDetailsUrl);
      if (response.statusCode == 200) {
        return BondDetailModel.fromJson(response.data);
      } else {
        throw ServerException(message: 'Failed to load bond detail');
      }
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}
 