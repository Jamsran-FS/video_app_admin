import 'package:universal_html/html.dart' as html;

class LocalStorage {
  static var storage = html.window.localStorage;

  static Future<void> write(String key, String value) async {
    storage[key] = value;
  }

  static Future<String?> read(String key) async => storage[key];

  static Future<void> delete(String key) async {
    storage.remove(key);
  }
}