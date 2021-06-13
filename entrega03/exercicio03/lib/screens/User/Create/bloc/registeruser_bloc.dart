import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:exercicio03/models/User.dart';
import 'package:exercicio03/repository/UserRepository.dart';

part 'registeruser_event.dart';
part 'registeruser_state.dart';

class UserRegisterBloc extends Bloc<UserRegisterEvent, UserRegisterState> {
  UserRegisterBloc(UserRegisterState initialState)
      : super(UserRegisterInitialState());

  UserRepository _userRepository = new UserRepository();

  @override
  Stream<UserRegisterState> mapEventToState(
    UserRegisterEvent event,
  ) async* {
    if (event is CreateUserEvent) {
      try {
        yield UserRegisteringState();
        bool result = await _userRepository.store(user: event.user);
        if (result) {
          yield UserRegisteredState();
        } else {
          yield UserRegisterFailState();
        }
      } catch (e) {
        yield UserRegisterErrorState(
            message: "Erro ao cadastrar usuário, tente mais tarde");
        print(e);
      }
    }
  }
}
