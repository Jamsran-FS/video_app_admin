import 'package:video_app_admin/index.dart';

class ParticipantProvider with ChangeNotifier {
  List<Participant> items = [];

  Future<void> getAll() async {
    items = await ParticipantRepo.getAll();
    notifyListeners();
  }
}
