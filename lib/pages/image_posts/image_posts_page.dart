import 'package:video_app_admin/index.dart';

class ImagePostsPage extends StatefulWidget {
  const ImagePostsPage({super.key});

  @override
  State<ImagePostsPage> createState() => _ImagePostsPageState();
}

class _ImagePostsPageState extends State<ImagePostsPage> {
  bool loading = false;

  @override
  void initState() {
    setState(() {
      loading = true;
    });
    Provider.of<ImagePostProvider>(context, listen: false)
        .getAll().then((value) {
      setState(() {
        loading = false;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return loading
    ? Center(
      child: Column(
        children: [
          const SizedBox(height: 120),
          const SizedBox(
            width: 32,
            height: 32,
            child: CircularProgressIndicator(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text('Loading...', style: Styles.normalText),
          ),
        ],
      ),
    )
    : Consumer<ImagePostProvider>(
      builder: (_, provider, __) {
        return Scrollbar(
          child: ListView.builder(
            itemCount: provider.items.length,
            itemBuilder: (BuildContext ctx, int index) {
              Post item = provider.items[index];
              return ListViewItem(
                number: index + 1,
                title: 'Нийт ${item.images!.length} зураг',
                description: item.date.toString(),
                image: item.images![0],
                tooltipEdit: 'Пост засварлах',
                tooltipDelete: 'Пост устгах',
                editPageRouteName: 'edit_image_post',
              );
            },
          ),
        );
      },
    );
  }
}
