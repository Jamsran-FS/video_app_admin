import 'package:video_app_admin/index.dart';

class AddVideoPost extends StatelessWidget {
  const AddVideoPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 60),
        child: const MainAppbar(title: 'Видео пост нэмэх'),
      ),
      body: const Center(
        child: Text('Add video post'),
      ),
    );
  }
}
