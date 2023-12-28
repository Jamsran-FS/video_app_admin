import 'package:video_app_admin/index.dart';

class Header extends StatelessWidget {
  final String title;
  final String? routeName;
  final String? tooltip;
  const Header({
    super.key,
    required this.title,
    required this.routeName,
    required this.tooltip,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: Styles.extraLargeBoldText),
        const SizedBox(width: 8),
        if (routeName != null) ...[
          IconButton(
            onPressed: () {
              context.goNamed(routeName!);
            },
            tooltip: tooltip,
            icon: const Icon(Icons.add_circle_outline, color: Colors.black),
          ),
        ],
      ],
    );
  }
}
