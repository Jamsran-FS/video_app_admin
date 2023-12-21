import 'package:video_app_admin/index.dart';

class ParticipantsPage extends StatefulWidget {
  const ParticipantsPage({super.key});

  @override
  State<ParticipantsPage> createState() => _ParticipantsPageState();
}

class _ParticipantsPageState extends State<ParticipantsPage> {
  bool loading = false;

  @override
  void initState() {
    setState(() {
      loading = true;
    });
    Provider.of<ParticipantProvider>(context, listen: false)
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
      : Consumer<ParticipantProvider>(
          builder: (_, provider, __) {
            return Scrollbar(
              child: ListView.builder(
                itemCount: provider.items.length,
                itemBuilder: (BuildContext ctx, int index) {
                  Participant item = provider.items[index];
                  return ListViewItem(
                    number: index + 1,
                    title: item.fullName,
                    description: item.intro,
                    image: item.photo,
                  );
                },
              ),
            );
          },
      );
  }
}
