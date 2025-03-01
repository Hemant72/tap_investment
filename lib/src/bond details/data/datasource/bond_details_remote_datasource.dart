import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/const/api_constants.dart';
import '../../../../core/error/exception.dart';
import '../../../bond%20details/data/model/bond_detail_model.dart';

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
 