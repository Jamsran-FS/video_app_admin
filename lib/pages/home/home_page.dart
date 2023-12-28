import 'package:video_app_admin/index.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _activeTabIndex = 0;

  final List<SidebarItem> _menuItems = [
    SidebarItem(icon: Icons.interpreter_mode_outlined, text: 'Ярилцлагад оролцогчид'),
    SidebarItem(icon: Icons.video_collection_rounded, text: 'Видео пост удирдах'),
    SidebarItem(icon: Icons.text_fields, text: 'Текст пост удирдах'),
    SidebarItem(icon: Icons.image, text: 'Зурган пост удирдах'),
    SidebarItem(icon: Icons.supervised_user_circle, text: 'App хэрэглэгчдийн жагсаалт'),
    SidebarItem(icon: Icons.handshake, text: 'Хандивын мэдээлэл'),
    SidebarItem(icon: Icons.logout, text: 'Системээс гарах'),
  ];

  final List<TabPage> _pages = const [
    TabPage(
      title: 'Ярилцлагад оролцогчид',
      page: ParticipantsPage(),
      routeName: 'add_participant',
      tooltip: 'Оролцогч нэмэх',
    ),
    TabPage(
      title: 'Видео пост удирдах',
      page: VideoPostsPage(),
      routeName: 'add_video_post',
      tooltip: 'Видео пост нэмэх',
    ),
    TabPage(
      title: 'Текст пост удирдах',
      page: TextPostsPage(),
      routeName: 'add_text_post',
      tooltip: 'Текст пост нэмэх',
    ),
    TabPage(
      title: 'Зурган пост удирдах',
      page: ImagePostsPage(),
      routeName: 'add_image_post',
      tooltip: 'Зурган пост нэмэх',
    ),
    TabPage(title: 'App хэрэглэгчдийн жагсаалт', page: AppUsersPage()),
    TabPage(title: 'Хандивын жагсаалт', page: DonatesPage()),
  ];

  void _setActiveTab(int index) {
    setState(() {
      if (index == _menuItems.length - 1) {
        ConfirmDialog(
          header: "LOGOUT",
          description: "Системээс гарахдаа итгэлтэй байна уу?",
          onConfirm: () async {
            await Provider.of<AuthProvider>(context, listen: false).logout();
          },
        ).show(context);
        return;
      }
      _activeTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Sidebar(
            width: 350,
            headerText: 'Тархины хакер админ panel',
            headerIcon: Icons.settings_applications,
            items: _menuItems,
            activeTabIndex: _activeTabIndex,
            setActiveTab: _setActiveTab,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Header(
                    title: _pages[_activeTabIndex].title,
                    routeName: _pages[_activeTabIndex].routeName,
                    tooltip: _pages[_activeTabIndex].tooltip,
                  ),
                  const SizedBox(height: 20),
                  Expanded(child: _pages[_activeTabIndex].page),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TabPage {
  final String title;
  final Widget page;
  final String? routeName;
  final String? tooltip;
  const TabPage({
    required this.title,
    required this.page,
    this.routeName,
    this.tooltip,
  });
}
