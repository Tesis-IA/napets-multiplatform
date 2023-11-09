
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureService {
  final _storage = const FlutterSecureStorage();

  final _tokenKey = "tokenId";

  void saveToken(String value) {
    _storage.write(key: _tokenKey, value: value);
  }

  Future<String?> getToken() async {
    final value = await _storage.read(key: _tokenKey);
    return value;
  }
}
