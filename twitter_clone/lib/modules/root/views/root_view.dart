import 'package:flutter/material.dart';
import 'package:twitter_clone/modules/home/views/home_view.dart';
import 'package:twitter_clone/modules/messages/views/messages_view.dart';
import 'package:twitter_clone/modules/notifications/views/notifications_view.dart';
import 'package:twitter_clone/modules/search/views/search_view.dart';

class RootView extends StatefulWidget {
  const RootView({Key? key}) : super(key: key);

  @override
  State<RootView> createState() => _RootViewState();
}

class _RootViewState extends State<RootView> {
  int currentIndex = 0;

  final List<Widget> views = [
    HomeView(),
    SearchView(),
    NotificationsView(),
    MessagesView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: views[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (int index) => setState(() => currentIndex = index),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: _bnbItems,
      ),
    );
  }

  List<BottomNavigationBarItem> get _bnbItems {
    return [];
  }
}
