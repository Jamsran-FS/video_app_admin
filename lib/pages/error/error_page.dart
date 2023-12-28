import 'package:video_app_admin/index.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            'Сайтруу гар утаснаас хандах боломжгүй тул компьютерээс хандана уу!',
            style: Styles.largeBoldText,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
