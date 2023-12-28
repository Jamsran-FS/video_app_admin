import 'package:video_app_admin/index.dart';

class ListViewItem extends StatelessWidget {
  final int number;
  final String? title;
  final String? description;
  final String? image;
  final String? tooltipEdit;
  final String? tooltipDelete;
  final String? editPageRouteName;
  const ListViewItem({
    super.key,
    required this.number,
    this.title,
    this.description,
    this.image,
    required this.tooltipEdit,
    required this.tooltipDelete,
    this.editPageRouteName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          minLeadingWidth: 30,
          leading: Text(number.toString(), style: Styles.normalText),
          title: Row(
            children: [
              if (image != null) ...[
                ClipOval(
                  child: CachedNetworkImage(
                    width: 38,
                    height: 38,
                    imageUrl: image!,
                    fit: BoxFit.fill,
                    progressIndicatorBuilder: (_, __, ___) =>
                    const CustomProgressIndicator(),
                  ),
                )
              ],
              const SizedBox(width: 14),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title ?? Constants.emptyText,
                    style: Styles.mediumBoldText,
                  ),
                  Text(description ?? Constants.emptyText,
                    style: Styles.normalGreyText,
                  ),
                ],
              ),
            ],
          ),
          trailing: SizedBox(
            width: 120,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    if (editPageRouteName != null) {
                      context.goNamed(editPageRouteName!);
                    }
                  },
                  icon: const Icon(Icons.edit, color: Colors.blue),
                  tooltip: tooltipEdit,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.delete, color: Colors.red),
                  tooltip: tooltipDelete,
                ),
              ],
            ),
          ),
        ),
        Divider(color: Colors.grey.shade300),
      ],
    );
  }
}
