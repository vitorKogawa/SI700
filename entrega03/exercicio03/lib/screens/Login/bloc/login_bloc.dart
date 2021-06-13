import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:exercicio03/models/User.dart';
import 'package:exercicio03/repository/UserRepository.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(LoginState initialState) : super(LoginInitialState());

  UserRepository _userRepository = new UserRepository();

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginSignInEvent) {
      try {
        //assim que invocar o evento de login ele entra em loading(assim q ele clicar no btn login tem um tempo até que o servidor retorne a res para a req)
        yield LoginAuthenticatingState();
        final user = await _userRepository.sign(event.email, event.password);
        if (user.id == null) {
          yield LoginNotAuthenticated();
        } else {
          yield LoginAuthenticatedState();
        }
      } catch (e) {
        yield LoginErrorState(
            message: "Erro ao logar, favor tentar mais tarde");
        print(e);
      }
    } else if (event is LoginSignOutEvent) {
      yield LoginNotAuthenticated();
    } else if (event is LoginSignOutEvent) {
      yield LoginInitialState();
    }
  }
}
