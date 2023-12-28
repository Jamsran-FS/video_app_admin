import 'package:video_app_admin/index.dart';

class AddImagePost extends StatelessWidget {
  const AddImagePost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 60),
        child: const MainAppbar(title: 'Зурган пост нэмэх'),
      ),
      body: const Center(
        child: Text('Add image post'),
      ),
    );
  }
}
