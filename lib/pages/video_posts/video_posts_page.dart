import 'package:video_app_admin/index.dart';

class VideoPostsPage extends StatefulWidget {
  const VideoPostsPage({super.key});

  @override
  State<VideoPostsPage> createState() => _VideoPostsPageState();
}

class _VideoPostsPageState extends State<VideoPostsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext ctx, int index) {
        return Row(
          children: [
            Text(index.toString()),
            Text('Video post ${index + 1}', style: Styles.normalText),
          ],
        );
      },
    );
  }
}
