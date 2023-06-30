part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.loginEvent({
    required String username,
    required String password,
  }) = _LoginEvent;
}