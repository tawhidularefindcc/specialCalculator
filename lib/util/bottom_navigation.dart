import 'package:flutter/material.dart';

enum TabItem { foryou, selfcare, reachout, connect, resourses }

const Map<TabItem, String> tabName = {
  TabItem.foryou: 'For You',
  TabItem.selfcare: 'SelfCare',
  TabItem.reachout: 'Reachout',
  TabItem.connect: 'Connect',
  TabItem.resourses: 'Resources',
};

const Map<TabItem, MaterialColor> activeTabColor = {
  TabItem.foryou: Colors.red,
  TabItem.selfcare: Colors.green,
  TabItem.reachout: Colors.blue,
  TabItem.connect: Colors.blue,
  TabItem.resourses: Colors.blue,
};
const Map<TabItem, IconData> icons = {
  TabItem.foryou: Icons.home,
  TabItem.selfcare: Icons.person,
  TabItem.reachout: Icons.favorite_border,
  TabItem.connect: Icons.message,
  TabItem.resourses: Icons.nature_people,
};

class BottomNavigation extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  BottomNavigation(
      {Key? key, required this.currentTab, required this.onSelectTab})
      : super(key: key);
  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      items: [
        _buildItem(TabItem.foryou),
        _buildItem(TabItem.selfcare),
        _buildItem(TabItem.reachout),
        _buildItem(TabItem.connect),
        _buildItem(TabItem.resourses),
      ],
      onTap: (index) => onSelectTab(
        TabItem.values[index],
      ),
    );
  }

  BottomNavigationBarItem _buildItem(TabItem tabItem) {
    return BottomNavigationBarItem(
      icon: Icon(
        icons[tabItem],
        color: _colorTabMatching(tabItem),
      ),
      label: tabName[tabItem],
    );
  }

  Color _colorTabMatching(TabItem item) {
    return currentTab == item ? Colors.yellow : Colors.white;
  }
}
