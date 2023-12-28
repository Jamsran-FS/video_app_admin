import 'package:video_app_admin/index.dart';

class VideoPostsPage extends StatefulWidget {
  const VideoPostsPage({super.key});

  @override
  State<VideoPostsPage> createState() => _VideoPostsPageState();
}

class _VideoPostsPageState extends State<VideoPostsPage> {
  bool loading = false;

  @override
  void initState() {
    setState(() {
      loading = true;
    });
    Provider.of<VideoPostProvider>(context, listen: false)
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
    : Consumer<VideoPostProvider>(
      builder: (_, provider, __) {
        var participantProvider =
          Provider.of<ParticipantProvider>(context, listen: false);
        return Scrollbar(
          child: ListView.builder(
            itemCount: provider.items.length,
            itemBuilder: (BuildContext ctx, int index) {
              Post item = provider.items[index];
              return ListViewItem(
                number: index + 1,
                title: item.title,
                description: '${provider.getParticipantById(item.participantID,
                    participantProvider.items).fullName} '
                    '${Functions.generateDuration(item.duration ?? 0)}',
                image: item.thumbnail,
                tooltipEdit: 'Пост засварлах',
                tooltipDelete: 'Пост устгах',
                editPageRouteName: 'edit_video_post',
              );
            },
          ),
        );
      },
    );
  }
}
