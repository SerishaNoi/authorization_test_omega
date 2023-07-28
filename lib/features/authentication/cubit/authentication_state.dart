part of 'authentication_cubit.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial() = _Initial;
  const factory AuthenticationState.loading() = _Loading;
  const factory AuthenticationState.loggedIn(
    TokensModel tokensModel,
  ) = _LoggedIn;
  const factory AuthenticationState.error(
    String message,
  ) = _Error;
}
