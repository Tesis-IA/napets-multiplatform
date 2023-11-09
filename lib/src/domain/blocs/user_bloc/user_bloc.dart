import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:napets/src/domain/models/user_model.dart';
import 'package:napets/src/domain/repositories/user_repositorie.dart';
import 'package:crypto/crypto.dart' as crypto;

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository userRepository;
  UserBloc(this.userRepository) : super(UserInitial()) {
    on<UserLoginEvent>((event, emit) async {
      if (event.email.isEmpty) {
        emit(UserLoginErrorState("Usuario Vacio"));
        return;
      }
      if (event.password.isEmpty) {
        emit(UserLoginErrorState("Contraseña Vacia"));
        return;
      }
      emit(UserLoginLoadingState());
      try {
        final pass = event.password;
        final digest = crypto.md5.convert(pass.codeUnits);
        final md5Pass = digest.toString();
        final loggedUser =
            await userRepository.loginUser(event.email, md5Pass);
        emit(UserLoginSucessState(loggedUser));
      } catch (e) {
        emit(UserLoginErrorState(e.toString()));
      }
    });
  }
}
