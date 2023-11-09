import 'package:napets/src/domain/models/user_model.dart';
import 'package:napets/src/services/secure_storage_service.dart';
import 'package:napets/src/services/user_services.dart';

class UserRepository {
  UserRepository(this.restClient, this.secureService) {
    _getTokenFromStorage();
  }

  final Apirest restClient;
  final SecureService secureService;
  UserModel? loggedUser;
  String? _token;

  bool get hasToken => _token != null;
  String get userToken => _token ?? "";

  Future<UserModel> loginUser(String username, String password) async {
    try {
      final UserModel userlogged;
      userlogged = await restClient.login(username, password);
      secureService.saveToken(userlogged.token);
      return Future.value(loggedUser);
    } catch (e) {
      return Future.error(e);
    }
  }

  Future<void> _getTokenFromStorage() async {
    _token = await secureService.getToken();
  }
}
