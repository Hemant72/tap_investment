import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tap_investment/core/error/exception.dart';
import 'package:tap_investment/src/bonds%20list/domain/entities/bond.dart';
import 'package:tap_investment/src/bonds%20list/domain/usecase/get_bonds.dart';

part 'bonds_list_bloc.freezed.dart';
part 'bonds_list_event.dart';
part 'bonds_list_state.dart';

class BondsListBloc extends Bloc<BondsListEvent, BondsListState> {
  final GetBonds getBonds;

  BondsListBloc(this.getBonds) : super(const BondsListState.initial()) {
    on<FetchBonds>(_onFetchBonds);
    on<SearchBonds>(_onSearchBonds);
  }

  Future<void> _onFetchBonds(
    FetchBonds event,
    Emitter<BondsListState> emit,
  ) async {
    emit(const BondsListState.loading());
    final result = await getBonds();
    result.fold(
      (failure) => emit(
        BondsListState.error(
          failure is ServerException
              ? failure.message ?? 'Server error occurred'
              : failure.toString(),
        ),
      ),
      (bonds) => emit(BondsListState.loaded(bonds, bonds, '')),
    );
  }

  Future<void> _onSearchBonds(
    SearchBonds event,
    Emitter<BondsListState> emit,
  ) async {
    final currentState = state;
    if (currentState is Loaded) {
      final query = event.query.toLowerCase();
      if (query.isEmpty) {
        emit(
          BondsListState.loaded(currentState.bonds, currentState.bonds, query),
        );
      } else {
        final filteredBonds =
            currentState.bonds.where((bond) {
              return bond.companyName.toLowerCase().contains(query) ||
                  bond.isin.toLowerCase().contains(query);
            }).toList();
        emit(BondsListState.loaded(currentState.bonds, filteredBonds, query));
      }
    }
  }
}
