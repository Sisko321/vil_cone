import 'package:flutter/material.dart';
import 'package:vil_cone/Screens/loginscreen.dart';
import 'package:vil_cone/Screens/signupscreen.dart';

class LoginOrRegisterPage extends StatefulWidget {
  const LoginOrRegisterPage({super.key});

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {
  bool showLoginPage = true;

  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginScreen(
        ontap: togglePages,
      );
    } else {
      return SignupScreen(
        ontap: togglePages,
      );
    }
  }
}
