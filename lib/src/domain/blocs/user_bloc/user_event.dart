part of 'user_bloc.dart';

abstract class UserEvent {}

class UserLoginEvent extends UserEvent {
  UserLoginEvent({required this.password, required this.email});
  String email = "";
  String password = "";
}
