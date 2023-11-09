import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:napets/src/domain/models/user_model.dart';

class Apirest {
  Future<UserModel> login(String user, String password) async {
    var request =
        http.MultipartRequest('POST', Uri.parse('localhost:3000/auth/login'));
    request.fields.addAll({'correo': user, 'password': password});
    var response = await request.send();
    try {
      var res = json.decode(await response.stream.bytesToString());
      return UserModel.fromJson(res);
    } catch (e) {
      throw Exception("Usuario y/o contraseña incorrectos");
    }
  }
}
