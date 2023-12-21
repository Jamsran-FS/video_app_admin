import 'package:video_app_admin/index.dart';

class Sidebar extends StatelessWidget {
  final double width;
  final String headerText;
  final IconData headerIcon;
  final List<SidebarItem> items;
  final int activeTabIndex;
  final Function setActiveTab;
  const Sidebar({
    super.key,
    required this.width,
    required this.headerText,
    required this.headerIcon,
    required this.items,
    required this.activeTabIndex,
    required this.setActiveTab,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSidebar(
      maxSize: width,
      expanded: MediaQuery.of(context).size.width > 600,
      items: items,
      itemTextStyle: Styles.normalLightText,
      itemIconSize: 24,
      selectedIndex: activeTabIndex,
      autoSelectedIndex: false,
      onItemSelected: (index) => setActiveTab(index),
      headerIcon: headerIcon,
      headerIconSize: 24,
      headerIconColor: Colors.amberAccent,
      headerText: headerText,
      headerTextStyle: Styles.mediumLightText,
    );
  }
}
