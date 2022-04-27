import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradeforcetn/pages/settings/settings_page.dart';
import 'package:tradeforcetn/pages/spot/spot_page.dart';

import '../utils/colors.dart';
import '../utils/icons.dart';
import '../widget/LinearGradientMask.dart';
import 'home/home_page.dart';
import 'learn/learn_home.dart';
import 'notification/notification_page.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int _selectedIndex = 0;

  final screens = [
    HomePage(),
    LearnPage(),
    SpotPage(),
    NotificationPage(),
    SettingsPage(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: IndexedStack(
        index: _selectedIndex,
        children: screens,
      ),
      bottomNavigationBar: Container(
        clipBehavior: Clip.hardEdge,
        margin: EdgeInsets.only(left: 16, right: 16, bottom: 20),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.white,
          backgroundColor: AppColors.iconButtonColor,
          type: BottomNavigationBarType.fixed,
          iconSize: 30,
          items: [
            BottomNavigationBarItem(
              activeIcon: LinearGradientMask(
                  child: Icon(
                Icons.home,
                color: Colors.white,
                size: 30,
              )),
              icon: Icon(Icons.home, size: 30),
              label: 'home',
            ),
            BottomNavigationBarItem(
                activeIcon: LinearGradientMask(
                    child: Icon(
                  MyFlutterApp.graduation_cap,
                  color: Colors.white,
                  size: 30,
                )),
                icon: Icon(MyFlutterApp.graduation_cap),
                label: 'learn'),
            BottomNavigationBarItem(
                activeIcon: LinearGradientMask(
                    child: Icon(MyFlutterApp.exchange,
                        color: Colors.white, size: 30)),
                icon: Icon(MyFlutterApp.exchange),
                label: 'spot'),
            BottomNavigationBarItem(
                activeIcon: LinearGradientMask(
                    child: Icon(Icons.notifications_none,
                        color: Colors.white, size: 30)),
                icon: Icon(Icons.notifications_none, size: 30),
                label: 'notifications'),
            BottomNavigationBarItem(
                activeIcon: LinearGradientMask(
                    child: Icon(Icons.settings, color: Colors.white, size: 30)),
                icon: Icon(Icons.settings),
                label: 'settings'),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTap,
        ),
      ),
    );
  }
}
