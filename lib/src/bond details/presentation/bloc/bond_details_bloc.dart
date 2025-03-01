import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/error/exception.dart';
import '../../../bond%20details/domain/entities/bond_detail.dart';
import '../../../bond%20details/domain/usecase/get_bond_details.dart';

part 'bond_details_bloc.freezed.dart';
part 'bond_details_event.dart';
part 'bond_details_state.dart';

class BondDetailsBloc extends Bloc<BondDetailsEvent, BondDetailsState> {
  final GetBondDetail getBondDetail;

  BondDetailsBloc(this.getBondDetail)
    : super(const BondDetailsState.initial()) {
    on<FetchBondDetail>(_onFetchBondDetail);
  }

  Future<void> _onFetchBondDetail(
    FetchBondDetail event,
    Emitter<BondDetailsState> emit,
  ) async {
    emit(const BondDetailsState.loading());
    final result = await getBondDetail();
    result.fold(
      (failure) => emit(
        BondDetailsState.error(
          failure is ServerException
              ? failure.message ?? 'Server error occurred'
              : failure.toString(),
        ),
      ),
      (bondDetail) => emit(BondDetailsState.loaded(bondDetail)),
    );
  }
}
