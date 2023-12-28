import 'package:video_app_admin/index.dart';

class MainAppbar extends StatelessWidget {
  final String title;
  const MainAppbar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      toolbarHeight: 60,
    );
  }
}
