part of 'user_bloc.dart';

@immutable
abstract class UserState {}

class UserInitial extends UserState {}

class UserLoginLoadingState extends UserState{}
class UserLoginErrorState extends UserState{
  final String errorMsg;
  UserLoginErrorState(this.errorMsg);

}
class UserLoginSucessState extends UserState{
  final UserModel userModel;
  UserLoginSucessState(this.userModel);
}