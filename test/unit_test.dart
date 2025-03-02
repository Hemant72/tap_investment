import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:tap_investment/core/const/api_constants.dart';
import 'package:tap_investment/core/error/exception.dart';
import 'package:tap_investment/src/bond%20details/data/datasource/bond_details_remote_datasource.dart';
import 'package:tap_investment/src/bond%20details/data/model/bond_detail_model.dart';
import 'package:tap_investment/src/bonds%20list/data/datasource/bonds_list_remote_datasource.dart';
import 'package:tap_investment/src/bonds%20list/data/model/bond_model.dart';

import 'unit_test.mocks.dart';

@GenerateMocks([BondDetailRemoteDataSource, BondsListRemoteDataSource, Dio])
void main() {
  group('BondDetailRemoteDataSourceImpl', () {
    late MockDio mockDio;
    late BondDetailRemoteDataSourceImpl dataSource;

    setUp(() {
      mockDio = MockDio();
      dataSource = BondDetailRemoteDataSourceImpl(mockDio);
    });

    test('should return BondDetailModel when the response is 200', () async {
      final responseData = {
        'logo': 'https://example.com/logo.png',
        'companyName': 'Test Company',
        'description': 'Test Description',
        'isin': 'TEST123456789',
        'status': 'active',
        'prosAndCons': {
          'pros': ['Pro 1', 'Pro 2'],
          'cons': ['Con 1', 'Con 2'],
        },
        'financials': {
          'ebitda': [
            {'month': 'Jan', 'value': 100.0},
            {'month': 'Feb', 'value': 120.0},
          ],
          'revenue': [
            {'month': 'Jan', 'value': 500.0},
            {'month': 'Feb', 'value': 550.0},
          ],
        },
        'issuerDetails': {
          'issuerName': 'Test Issuer',
          'typeOfIssuer': 'Corporate',
          'sector': 'Technology',
          'industry': 'Software',
          'issuerNature': 'Private',
          'cin': 'CIN123456',
          'leadManager': 'Test Manager',
          'registrar': 'Test Registrar',
          'debentureTrustee': 'Test Trustee',
        },
      };

      when(mockDio.get(ApiConstants.bondDetailsUrl)).thenAnswer(
        (_) async => Response(
          data: responseData,
          statusCode: 200,
          requestOptions: RequestOptions(path: ApiConstants.bondDetailsUrl),
        ),
      );

      final result = await dataSource.getBondDetail();

      expect(result, isA<BondDetailModel>());
      expect(result.companyName, equals('Test Company'));
      expect(result.isin, equals('TEST123456789'));
      verify(mockDio.get(ApiConstants.bondDetailsUrl));
    });

    test('should throw ServerException when the response is not 200', () async {
      when(mockDio.get(ApiConstants.bondDetailsUrl)).thenAnswer(
        (_) async => Response(
          data: {'error': 'Something went wrong'},
          statusCode: 404,
          requestOptions: RequestOptions(path: ApiConstants.bondDetailsUrl),
        ),
      );

      expect(() => dataSource.getBondDetail(), throwsA(isA<ServerException>()));
      verify(mockDio.get(ApiConstants.bondDetailsUrl));
    });

    test('should throw ServerException when Dio throws an exception', () async {
      when(
        mockDio.get(ApiConstants.bondDetailsUrl),
      ).thenThrow(Exception('Network error'));

      expect(() => dataSource.getBondDetail(), throwsA(isA<ServerException>()));
      verify(mockDio.get(ApiConstants.bondDetailsUrl));
    });
  });

  group('BondRemoteDataSourceImpl', () {
    late MockDio mockDio;
    late BondsListRemoteDataSourceImpl dataSource;

    setUp(() {
      mockDio = MockDio();
      dataSource = BondsListRemoteDataSourceImpl(mockDio);
    });

    test('should return list of BondModel when the response is 200', () async {
      final responseData = {
        'data': [
          {
            'logo': 'https://example.com/logo1.png',
            'isin': 'TEST123456789',
            'rating': 'AAA',
            'companyName': 'Test Company 1',
            'tags': ['tag1', 'tag2'],
          },
          {
            'logo': 'https://example.com/logo2.png',
            'isin': 'TEST987654321',
            'rating': 'AA',
            'companyName': 'Test Company 2',
            'tags': ['tag3', 'tag4'],
          },
        ],
      };

      when(mockDio.get(ApiConstants.bondsListUrl)).thenAnswer(
        (_) async => Response(
          data: responseData,
          statusCode: 200,
          requestOptions: RequestOptions(path: ApiConstants.bondsListUrl),
        ),
      );

      final result = await dataSource.getBonds();

      expect(result, isA<List<BondModel>>());
      expect(result.length, equals(2));
      expect(result[0].companyName, equals('Test Company 1'));
      expect(result[1].companyName, equals('Test Company 2'));
      verify(mockDio.get(ApiConstants.bondsListUrl));
    });

    test('should throw ServerException when the response is not 200', () async {
      when(mockDio.get(ApiConstants.bondsListUrl)).thenAnswer(
        (_) async => Response(
          data: {'error': 'Something went wrong'},
          statusCode: 404,
          requestOptions: RequestOptions(path: ApiConstants.bondsListUrl),
        ),
      );

      expect(() => dataSource.getBonds(), throwsA(isA<ServerException>()));
      verify(mockDio.get(ApiConstants.bondsListUrl));
    });

    test(
      'should throw ServerException when Dio throws a DioException',
      () async {
        when(mockDio.get(ApiConstants.bondsListUrl)).thenThrow(
          DioException(
            requestOptions: RequestOptions(path: ApiConstants.bondsListUrl),
            error: 'Network error',
          ),
        );

        expect(() => dataSource.getBonds(), throwsA(isA<ServerException>()));
        verify(mockDio.get(ApiConstants.bondsListUrl));
      },
    );
  });
}
