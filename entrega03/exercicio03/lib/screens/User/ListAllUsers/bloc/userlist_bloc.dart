import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:exercicio03/models/User.dart';
import 'package:exercicio03/repository/UserRepository.dart';

part 'userlist_event.dart';
part 'userlist_state.dart';

class UserlistBloc extends Bloc<UserlistEvent, UserlistState> {
  UserlistBloc(UserlistState initialState) : super(UserListInitialState());

  UserRepository _userRepository = new UserRepository();

  @override
  Stream<UserlistState> mapEventToState(
    UserlistEvent event,
  ) async* {
    if (event is FetchUserListEvent) {
      try {
        //quando o usuário for redirecionado para a tela que mostra todos os usuários cadastrados no banco, ele vai cair no estado de loading pois tem um tempo até que o backend retorne umas resposta para a res do frontend
        yield UserListLoadingState();
        print("carregando lista de usuários...");
        final allUsers = await _userRepository.findAll();
        if (allUsers.length == 0) {
          yield UserListEmptyState();
          print("nenhum usuário encontrado.");
        } else {
          yield UserListLoadedState(usersList: allUsers);
          // print("lista carregada\n$allUsers");
        }
      } catch (e) {
        yield UserListErrorState();
        print(e);
      }
    }
  }
}
