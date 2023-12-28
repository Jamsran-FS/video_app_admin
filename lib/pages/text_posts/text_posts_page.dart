import 'package:video_app_admin/index.dart';

class TextPostsPage extends StatefulWidget {
  const TextPostsPage({super.key});

  @override
  State<TextPostsPage> createState() => _TextPostsPageState();
}

class _TextPostsPageState extends State<TextPostsPage> {
  bool loading = false;

  @override
  void initState() {
    setState(() {
      loading = true;
    });
    Provider.of<TextPostProvider>(context, listen: false)
        .getAll().then((value) {
      setState(() {
        loading = false;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return loading ? Center(
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
    ) : Consumer<TextPostProvider>(
      builder: (_, provider, __) {
        return Scrollbar(
          child: ListView.builder(
            itemCount: provider.items.length,
            itemBuilder: (BuildContext ctx, int index) {
              Post item = provider.items[index];
              return ListViewItem(
                number: index + 1,
                title: item.title,
                description: item.text,
                tooltipEdit: 'Пост засварлах',
                tooltipDelete: 'Пост устгах',
                editPageRouteName: 'edit_text_post',
              );
            },
          ),
        );
      },
    );
  }
}
