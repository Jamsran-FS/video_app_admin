import 'dart:developer';
import 'package:video_app_admin/index.dart';

class PostRepo {
  static Future<List<Post>> getAll(String type) async {
    List<Post> list = [];
    try {
      final docs = await FirebaseFirestore.instance
          .collection('/posts')
          .where('type', isEqualTo: type)
          .get();
      for (var element in docs.docs) {
        list.add(Post.fromJson(element.data()));
      }
      return list;
    } on FirebaseException catch (e) {
      if (kDebugMode) {
        log('Failed with error ${e.code}: ${e.message}');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
    return list;
  }
}