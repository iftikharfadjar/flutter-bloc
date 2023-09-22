import 'package:bloc/bloc.dart';
import 'package:bloc1/bloc/export.dart';
import 'package:equatable/equatable.dart';

import '../../models/user.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial([])) {
    //ADD USER
    on<AddUserEvent>((event, emit) {});
  }
}
