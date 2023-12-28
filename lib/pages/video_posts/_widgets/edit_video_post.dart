import 'package:video_app_admin/index.dart';

class EditVideoPost extends StatelessWidget {
  const EditVideoPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 60),
        child: const MainAppbar(title: 'Видео пост засварлах'),
      ),
      body: const Center(
        child: Text('Edit video post'),
      ),
    );
  }
}
