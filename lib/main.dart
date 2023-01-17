import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoppinglive/providers/user_provider.dart';
import 'package:shoppinglive/screens/home_screen.dart';
import 'package:shoppinglive/screens/profile/editprofile/edit_profile.dart';
import 'package:shoppinglive/screens/profile/follower/follower_profile.dart';
import 'package:shoppinglive/screens/profile/myorder/order_section.dart';
import 'package:shoppinglive/screens/profile/profile_screen.dart';
import 'package:shoppinglive/screens/signup_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => UserProvider())],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping Live',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        ProfileScreen.routeName: (context) => const ProfileScreen(),
        FollowerProfile.routeName: (context) => const FollowerProfile(),
        OrderSection.routeName: (context) => const OrderSection(),
        EditProfile.routeName: (context) => const EditProfile(),
      },
      home: const SignUpScreen(),
    );
  }
}
