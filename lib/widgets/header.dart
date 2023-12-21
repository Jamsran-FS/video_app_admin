import 'package:video_app_admin/index.dart';

class Header extends StatelessWidget {
  final String title;
  final Function onPressedAdd;
  const Header({super.key, required this.title, required this.onPressedAdd});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: Styles.extraLargeBoldText),
        const SizedBox(width: 8),
        IconButton(
          onPressed: () {
            onPressedAdd();
          },
          icon: const Icon(Icons.add_circle_outline, color: Colors.black),
        ),
      ],
    );
  }
}
