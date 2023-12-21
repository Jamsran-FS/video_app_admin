import 'package:video_app_admin/index.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({super.key, required this.title});

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
  ];

  final List<TabPage> _pages = const [
    TabPage(title: 'Ярилцлагад оролцогчид', page: ParticipantsPage()),
    TabPage(title: 'Видео пост удирдах', page: VideoPostsPage()),
    TabPage(title: 'Текст пост удирдах', page: TextPostsPage()),
    TabPage(title: 'Зурган пост удирдах', page: ImagePostsPage()),
    TabPage(title: 'App хэрэглэгчдийн жагсаалт', page: AppUsersPage()),
    TabPage(title: 'Хандивын жагсаалт', page: DonatesPage()),
  ];

  void _setActiveTab(int index) {
    setState(() {
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
                    onPressedAdd: () {},
                    title: _pages[_activeTabIndex].title,
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
  const TabPage({required this.title, required this.page});
}
