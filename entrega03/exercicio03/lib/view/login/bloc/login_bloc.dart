import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:exercicio03/models/User.dart';
import 'package:exercicio03/repository/UserRepository.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(LoginState initialState) : super(initialState);

  UserRepository _userRepository = new UserRepository();

  @override
  LoginState get initialState => InitialLoginState();

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    if (event is SignInEvent) {
      try {
        yield StartLoginState();
        final user = await _userRepository.sign(event.email, event.password);
        if (user.id == null) {
          yield ErrorLoginState(message: 'E-mail ou senha inválidos.');
        } else {
          yield SuccessLoginState(user: user);
        }
      } catch (e) {
        yield ErrorLoginState(message: 'Ops! Algo deu errado.');
        print(e);
      }
    } else if (event is SignOutEvent) {
      try {
        yield StartLoginState();

        final result = await _userRepository.signout(event.id);
        if (!result) {
          yield ErrorLogoutState(errorMessage: 'E-mail ou senha inválidos.');
        } else {
          yield SucessLogoutState(message: "Saindo...");
        }
      } catch (e) {
        yield ErrorLogoutState(errorMessage: 'Ops! Algo deu errado.');
        print(e);
      }
    }
  }
}
