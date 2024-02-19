import 'package:video_app_admin/index.dart';

class AuthProvider with ChangeNotifier {
  bool isAuth = false;
  String? username;

  Future<bool> login(String username, String password) async {
    try {
      if (username == 'admin' && password == 'admin') {
        LocalStorage.write('username', username);
        isAuth = true;
        this.username = username;
        notifyListeners();
        Logger.s('LOGGED IN');
        
        return true;
      }
      return false;
    } catch (ex) {
      Logger.e('Auth provider error => login: $ex');
      return false;
    }
  }

  Future<void> logout() async {
    isAuth = false;
    username = null;
    LocalStorage.delete('username');
    notifyListeners();
  }

  void updateLoginInfo({required bool isAuth, required String? username}) {
    this.isAuth = isAuth;
    this.username = username;
    notifyListeners();
  }
}
