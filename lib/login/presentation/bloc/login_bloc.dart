import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_bloc.freezed.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<_LoginEvent>(_onLoggedIn);
  }

  void _onLoggedIn(_LoginEvent event, Emitter<LoginState> emit) {
    emit(state.copyWith(status: LoginStatus.loading));

    if (event.password.isNotEmpty && event.username.isNotEmpty) {
      emit(state.copyWith(status: LoginStatus.success));
    } else if (event.username.isNotEmpty && event.password.isEmpty) {
      emit(state.copyWith(status: LoginStatus.emptyPassword));
    } else if (event.username.isEmpty && event.password.isNotEmpty) {
      emit(state.copyWith(status: LoginStatus.emptyUsername));
    } else {
      emit(state.copyWith(status: LoginStatus.noCredentials));
    }
  }
}
