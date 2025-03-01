// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i973;

import '../../src/bond%20details/data/datasource/bond_details_remote_datasource.dart'
    as _i981;
import '../../src/bond%20details/data/repositiories/bond_details_repository_impl.dart'
    as _i853;
import '../../src/bond%20details/domain/repositiories/bond_details_repositiory.dart'
    as _i299;
import '../../src/bond%20details/domain/usecase/get_bond_details.dart' as _i271;
import '../../src/bonds%20list/data/datasource/bonds_list_remote_datasource.dart'
    as _i902;
import '../../src/bonds%20list/data/repositiories/bonds_list_repository_impl.dart'
    as _i777;
import '../../src/bonds%20list/domain/repositiories/bonds_list_repositiory.dart'
    as _i341;
import '../../src/bonds%20list/domain/usecase/get_bonds.dart' as _i146;
import '../network/network_info.dart' as _i932;
import 'di.dart' as _i913;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final appModule = _$AppModule();
    gh.lazySingleton<_i361.Dio>(() => appModule.dio);
    gh.lazySingleton<_i973.InternetConnectionChecker>(
      () => appModule.internetConnectionChecker,
    );
    gh.lazySingleton<_i902.BondsListRemoteDataSource>(
      () => _i902.BondRemoteDataSourceImpl(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i981.BondDetailRemoteDataSource>(
      () => _i981.BondDetailRemoteDataSourceImpl(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i932.NetworkInfo>(
      () => _i932.NetworkInfoImpl(gh<_i973.InternetConnectionChecker>()),
    );
    gh.lazySingleton<_i341.BondsListRepository>(
      () => _i777.BondRepositoryImpl(
        gh<_i902.BondsListRemoteDataSource>(),
        gh<_i932.NetworkInfo>(),
      ),
    );
    gh.lazySingleton<_i299.BondDetailsRepository>(
      () => _i853.BondRepositoryImpl(
        gh<_i981.BondDetailRemoteDataSource>(),
        gh<_i932.NetworkInfo>(),
      ),
    );
    gh.lazySingleton<_i146.GetBonds>(
      () => _i146.GetBonds(gh<_i341.BondsListRepository>()),
    );
    gh.lazySingleton<_i271.GetBondDetail>(
      () => _i271.GetBondDetail(gh<_i299.BondDetailsRepository>()),
    );
    return this;
  }
}

class _$AppModule extends _i913.AppModule {}
