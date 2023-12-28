import 'package:video_app_admin/index.dart';

part 'post.g.dart';

@JsonSerializable()
class Post {
  final String id;
  final String? title, text;
  final PostType type;
  final DateTime date;
  List<String>? images;
  String? participantID, thumbnail, videoURL;
  int? duration, watchedSec;
  int like, comment, view, share;

  Post({
    required this.id,
    this.title,
    this.text,
    required this.type,
    required this.date,
    required this.like,
    required this.comment,
    required this.view,
    required this.share,
    this.images,
    this.participantID,
    this.thumbnail,
    this.videoURL,
    this.duration,
    this.watchedSec,
  });

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
  Map<String, dynamic> toJson() => _$PostToJson(this);
}
