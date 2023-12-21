import 'dart:developer';
import 'package:video_app_admin/index.dart';

class ParticipantRepo {
  static Future<List<Participant>> getAll() async {
    List<Participant> list = [];
    try {
      final docs = await FirebaseFirestore.instance
          .collection('participants').get();

      for (var element in docs.docs) {
        Participant participant = Participant.fromJson(element.data());
        await FirebaseFirestore.instance
            .collection('posts')
            .where('participantID', isEqualTo: participant.id)
            .get()
            .then((snapshot) => {
          if (snapshot.docs.isNotEmpty)
            {
              participant.famousVideoThumb =
              snapshot.docs.first.data()['thumbnail']
            }
        });

        list.add(participant);
      }
      return list;
    } on FirebaseException catch (e) {
      if (kDebugMode) {
        log('Failed with error ${e.code}: ${e.message}');
      }
      return list;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
