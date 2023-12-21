import 'package:video_app_admin/index.dart';

part 'participant.g.dart';

@JsonSerializable()
class Participant {
  final String id, fullName, intro;
  String photo;
  String? famousVideoThumb;
  int? videoCount, likeCount;

  Participant({
    required this.id,
    required this.fullName,
    required this.photo,
    required this.intro,
    this.famousVideoThumb,
    this.videoCount,
    this.likeCount,
  });

  factory Participant.fromJson(Map<String, dynamic> json) => _$ParticipantFromJson(json);
  Map<String, dynamic> toJson() => _$ParticipantToJson(this);
}
