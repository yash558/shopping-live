import 'package:flutter/material.dart';
import 'package:shoppinglive/screens/gallery_screen.dart';
import 'package:shoppinglive/screens/notification_screen.dart';
import 'package:shoppinglive/screens/profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTab = 0;
  final List<Widget> screens = [
    const HomeScreen(),
    const ProfileScreen(),
    const NotificationScreen(),
    const GalleryScreen()
  ];

  Widget currentScreen = const HomeScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F1FE),
      appBar: AppBar(
        title: const Text(
          "Shopping Live",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF6667AB),
        child: Icon(
          Icons.add_box_outlined,
          size: 30,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      padding: const EdgeInsets.only(left: 30),
                      minWidth: 32,
                      onPressed: () {
                        setState(() {
                          currentScreen = const HomeScreen();
                          currentTab = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home_outlined,
                            size: 32,
                            color: currentTab == 0
                                ? Color(0xFF6667AB)
                                : Colors.black54,
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      padding: const EdgeInsets.only(left: 40),
                      onPressed: () {
                        setState(() {
                          currentScreen = const GalleryScreen();
                          currentTab = 1;
                        });
                      },
                      minWidth: 32,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.dashboard_rounded,
                            size: 30,
                            color: currentTab == 1
                                ? const Color(0xFF6667AB)
                                : Colors.black54,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MaterialButton(
                      padding: const EdgeInsets.only(right: 40),
                      onPressed: () {
                        setState(() {
                          currentScreen = const NotificationScreen();
                          currentTab = 2;
                        });
                      },
                      minWidth: 30,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.notifications_active_outlined,
                            size: 30,
                            color: currentTab == 2
                                ? Color(0xFF6667AB)
                                : Colors.black54,
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      padding: const EdgeInsets.only(right: 30),
                      onPressed: () {
                        setState(() {
                          currentScreen = const ProfileScreen();
                          currentTab = 3;
                        });
                      },
                      minWidth: 30,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person_outline_rounded,
                            size: 30,
                            color: currentTab == 3
                                ? Color(0xFF6667AB)
                                : Colors.black54,
                          )
                        ],
                      ),
                    )
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
