import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shoppinglive/colors/color.dart';
import 'package:shoppinglive/screens/login_screen.dart';

import '../widgets/widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool showPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Center(
                child: SizedBox(
                  width: 600,
                  height: 320,
                  child: Image.asset("assets/signup1.jpg"),
                ),
              ),
            ),
            Container(
              alignment: AlignmentDirectional.topStart,
              padding: const EdgeInsets.only(left: 30),
              child: const Text(
                "Sign Up",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: 'Username',
                  icon: Icon(Icons.person_outlined),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Email id',
                    icon: Icon(Icons.email_outlined)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: TextField(
                obscureText: showPassword,
                decoration: InputDecoration(
                  border: const UnderlineInputBorder(),
                  hintText: 'Password',
                  icon: const Icon(Icons.lock_outline_rounded),
                  suffix: IconButton(
                    onPressed: () {
                      setState(() {
                        if (showPassword) {
                          showPassword = false;
                        } else {
                          showPassword = true;
                        }
                      });
                    },
                    icon: Icon(showPassword == true
                        ? Icons.remove_red_eye_outlined
                        : Icons.password),
                  ),
                ),
              ),
            ),
            // Container(
            //   alignment: AlignmentDirectional.topEnd,
            //   margin: const EdgeInsets.only(right: 20),
            //   child: TextButton(
            //     onPressed: () {},
            //     child: const Text(
            //       "Forgot Password?",
            //       style: TextStyle(fontSize: 15, color: Colors.black54),
            //     ),
            //   ),
            // ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 50,
              width: 370,
              padding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
              child: ElevatedButton(
                child: const Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF6667AB),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 1.0,
                      width: 145.0,
                      color: Colors.black45,
                    ),
                  ),
                  const Text(
                    'or',
                    style: TextStyle(fontSize: 20.0, color: Colors.black45),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 1.0,
                      width: 145.0,
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, right: 30, left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomWidgets.socialButtonCircle(
                    facebookColor,
                    FontAwesomeIcons.facebookF,
                    iconColor: Colors.white,
                    onTap: () {},
                  ),
                  CustomWidgets.socialButtonCircle(
                    googleColor,
                    FontAwesomeIcons.googlePlusG,
                    iconColor: Colors.white,
                    onTap: () {},
                  ),
                  CustomWidgets.socialButtonCircle(
                    linkedinColor,
                    FontAwesomeIcons.linkedinIn,
                    iconColor: Colors.white,
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have account?",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                  GestureDetector(
                    onTap: (() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    }),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Color(0xFF6667AB),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
