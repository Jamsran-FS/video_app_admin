import 'package:video_app_admin/index.dart';

class EditTextPost extends StatelessWidget {
  const EditTextPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 60),
        child: const MainAppbar(title: 'Текст пост засварлах'),
      ),
      body: const Center(
        child: Text('Edit text post'),
      ),
    );
  }
}
