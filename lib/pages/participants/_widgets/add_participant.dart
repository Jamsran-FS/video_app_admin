import 'package:video_app_admin/index.dart';

class AddParticipant extends StatelessWidget {
  const AddParticipant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 60),
        child: const MainAppbar(title: 'Оролцогч нэмэх'),
      ),
      body: const Center(
        child: Text('Add participant'),
      ),
    );
  }
}
