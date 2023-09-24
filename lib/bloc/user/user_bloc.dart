import 'package:bloc/bloc.dart';
import 'package:bloc1/bloc/export.dart';
import 'package:equatable/equatable.dart';

import '../../models/user.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc()
      : super(UserInitial([
          User(id: 1, name: "Test", age: 1),
        ])) {
    // on<UserEvent>((event, emit) {});
    //ADD USER
    on<AddUserEvent>((event, emit) {
      try {
        emit(UserLoading(state.allUsers));
        state.allUsers.add(event.user);
        emit(UserFinish(state.allUsers));
      } catch (e) {
        emit(UserError(state.allUsers));
      }
    });
  }
}
