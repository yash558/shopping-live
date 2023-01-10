import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shoppinglive/colors/color.dart';
import 'package:shoppinglive/widgets/widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 120.0),
              child: Center(
                child: SizedBox(
                  width: 500,
                  height: 300,
                  child: Image.asset("assets/bg.jpg"),
                ),
              ),
            ),
            Container(
              alignment: AlignmentDirectional.topStart,
              padding: const EdgeInsets.only(left: 30),
              child: const Text(
                "Login",
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
                    hintText: 'Email id',
                    icon: Icon(Icons.email)),
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
                  icon: const Icon(Icons.password),
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
                        ? Icons.remove_red_eye
                        : Icons.password),
                  ),
                ),
              ),
            ),
            Container(
              alignment: AlignmentDirectional.topEnd,
              margin: const EdgeInsets.only(right: 20),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Forgot Password?",
                  style: TextStyle(fontSize: 15, color: Colors.black54),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: 370,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFA855F7),
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
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "New to Demo?",
                      style: TextStyle(
                          color: Color.fromARGB(255, 59, 58, 58), fontSize: 14),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(color: Color(0xFFA855F7), fontSize: 14),
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
