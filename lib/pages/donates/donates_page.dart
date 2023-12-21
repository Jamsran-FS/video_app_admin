import 'package:video_app_admin/index.dart';

class DonatesPage extends StatelessWidget {
  const DonatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext ctx, int index) {
        return Row(
          children: [
            Text(index.toString()),
            Text('Donate ${index + 1}', style: Styles.normalText),
          ],
        );
      },
    );
  }
}
