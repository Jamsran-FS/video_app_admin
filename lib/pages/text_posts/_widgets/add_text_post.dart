import 'package:video_app_admin/index.dart';

class AddTextPost extends StatelessWidget {
  const AddTextPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 60),
        child: const MainAppbar(title: 'Текст пост нэмэх'),
      ),
      body: const Center(
        child: Text('Add text post'),
      ),
    );
  }
}
