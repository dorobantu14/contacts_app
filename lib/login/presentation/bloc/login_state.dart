part of 'login_bloc.dart';

enum LoginStatus {
  initial,
  loading,
  emptyUsername,
  emptyPassword,
  noCredentials,
  success,
}

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(LoginStatus.initial) LoginStatus status,
  }) = _LoginState;
}
