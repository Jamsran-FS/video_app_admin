import 'package:video_app_admin/index.dart';

class TextPostProvider with ChangeNotifier {
  List<Post> items = [];

  Future<void> getAll() async {
    items = await PostRepo.getAll('text');
    notifyListeners();
  }
}
