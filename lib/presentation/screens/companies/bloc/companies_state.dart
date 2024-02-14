part of 'companies_bloc.dart';

@freezed
class CompaniesState with _$CompaniesState {
  const factory CompaniesState.pending() = _StatePending;
  const factory CompaniesState.screenState({required List<Company> companies}) =
      _ScreenState;
  const factory CompaniesState.requestError({String? errorText}) =
      _StateRequestError;
  const factory CompaniesState.requestSuccess() = _StateRequestSuccess;
  const factory CompaniesState.initialLoadingError(
      {@Default(false) bool isPending}) = _StateInitialLoadingError;
}
