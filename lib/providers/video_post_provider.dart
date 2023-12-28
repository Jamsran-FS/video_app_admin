import 'package:video_app_admin/index.dart';

class VideoPostProvider with ChangeNotifier {
  List<Post> items = [];

  Future<void> getAll() async {
    items = await PostRepo.getAll('podcast');
    notifyListeners();
  }

  Participant getParticipantById(String? id, List<Participant> items) {
    return items.singleWhere((element) => element.id == id,
        orElse: () => Participant(
          id: '',
          fullName: 'Participant not found!',
          photo: '',
          intro: '',
        ));
  }
}
