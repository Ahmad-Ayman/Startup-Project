import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  static Future<void> add(String key, String value) async {
    const storage = FlutterSecureStorage();

    await storage.write(key: key, value: value);
  }

  static Future<String> get(String key) async {
    const storage = FlutterSecureStorage();

    String value = (await storage.read(key: key)) ?? '';
    return value;
  }

  static Future<void> delete(String key) async {
    const storage = FlutterSecureStorage();

    await storage.delete(key: key);
  }
}
