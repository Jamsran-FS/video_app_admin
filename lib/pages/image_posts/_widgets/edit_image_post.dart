import 'package:video_app_admin/index.dart';

class EditImagePost extends StatelessWidget {
  const EditImagePost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 60),
        child: const MainAppbar(title: 'Зурган пост засварлах'),
      ),
      body: const Center(
        child: Text('Edit image post'),
      ),
    );
  }
}
