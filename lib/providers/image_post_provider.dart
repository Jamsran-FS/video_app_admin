import 'package:video_app_admin/index.dart';

class ImagePostProvider with ChangeNotifier {
  List<Post> items = [];

  Future<void> getAll() async {
    items = await PostRepo.getAll('image');
    notifyListeners();
  }
}
