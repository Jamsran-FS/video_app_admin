import 'package:video_app_admin/index.dart';

class EditParticipant extends StatelessWidget {
  const EditParticipant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 60),
        child: const MainAppbar(title: 'Оролцогч засварлах'),
      ),
      body: const Center(
        child: Text('Edit participant'),
      ),
    );
  }
}
