import 'package:video_app_admin/index.dart';

class TextPostsPage extends StatefulWidget {
  const TextPostsPage({super.key});

  @override
  State<TextPostsPage> createState() => _TextPostsPageState();
}

class _TextPostsPageState extends State<TextPostsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext ctx, int index) {
        return Row(
          children: [
            Text(index.toString()),
            Text('Text post ${index + 1}', style: Styles.normalText),
          ],
        );
      },
    );
  }
}
