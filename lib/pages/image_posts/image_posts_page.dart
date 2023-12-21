import 'package:video_app_admin/index.dart';

class ImagePostsPage extends StatefulWidget {
  const ImagePostsPage({super.key});

  @override
  State<ImagePostsPage> createState() => _ImagePostsPageState();
}

class _ImagePostsPageState extends State<ImagePostsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext ctx, int index) {
        return Row(
          children: [
            Text(index.toString()),
            Text('Image post ${index + 1}', style: Styles.normalText),
          ],
        );
      },
    );
  }
}
