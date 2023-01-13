import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shoppinglive/screens/gallery_screen.dart';
import 'package:shoppinglive/screens/home.dart';
import 'package:shoppinglive/screens/liveProduct.dart';
import 'package:shoppinglive/screens/notification_screen.dart';
import 'package:shoppinglive/screens/profile.dart';
import 'package:shoppinglive/widgets/CategoriesWidget.dart';
import 'package:shoppinglive/widgets/itemsWidget.dart';
import 'package:shoppinglive/widgets/upcomingLive.dart';

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

  Widget currentScreen = const Home();
  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f7fb),
      appBar: AppBar(
        toolbarHeight: 60,
        title: Image.asset(
          "assets/logo.png",
          height: 80,
          width: 100,
        ),
        actions: [
          Container(
            margin: const EdgeInsetsDirectional.only(end: 10.0),
            child: const Icon(
              Icons.search_outlined,
              size: 30,
              color: Color(0xFF000000),
            ),
          )
        ],
        backgroundColor: const Color(0xFFCFD0E5),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          const ItemsWidget(),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(left: 24),
            child: const Text(
              "Upcoming Live",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
          ),
          const UpcomingLive()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF6667AB),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const LiveProduct();
          }));
        },
        child: Image.asset(
          "assets/more.png",
          color: Colors.white,
          height: 30,
          width: 30,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
          child: Container(
            height: 90,
            // decoration: BoxDecoration(
            //   color: Colors.white.withOpacity(0.5),
            // ),
            child: Container(
              margin: const EdgeInsets.only(
                  right: 20, bottom: 14, top: 14, left: 12),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: BottomAppBar(
                shape: const CircularNotchedRectangle(),
                notchMargin: 7,
                child: SizedBox(
                  width: 20,
                  height: 60,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MaterialButton(
                              padding: const EdgeInsets.only(left: 40),
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
                                  Image.asset(
                                    "assets/home.png",
                                    height: 27,
                                    width: 27,
                                    color: currentTab == 0
                                        ? const Color(0xFF6667AB)
                                        : Colors.black54,
                                  ),
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
                                  Image.asset(
                                    "assets/dashboard.png",
                                    height: 27,
                                    width: 27,
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
                              minWidth: 32,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/notification.png",
                                    height: 27,
                                    width: 27,
                                    color: currentTab == 2
                                        ? const Color(0xFF6667AB)
                                        : Colors.black54,
                                  )
                                ],
                              ),
                            ),
                            MaterialButton(
                              padding: const EdgeInsets.only(right: 20),
                              onPressed: () {
                                setState(() {
                                  currentScreen = const ProfileScreen();
                                  currentTab = 3;
                                });
                              },
                              minWidth: 32,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/profile.png",
                                    height: 35,
                                    width: 35,
                                    color: currentTab == 3
                                        ? const Color(0xFF6667AB)
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
            ),
          ),
        ),
      ),
    );
  }
}
