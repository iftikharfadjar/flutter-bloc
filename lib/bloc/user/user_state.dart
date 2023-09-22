part of 'user_bloc.dart';

abstract class UserState extends Equatable {
  UserState(this.allUser);

  List<User> allUser;

  @override
  List<Object> get props => [allUser];
}

class UserIntial extends UserState {
  UserIntial(super.allUser);
}
