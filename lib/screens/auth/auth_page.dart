import 'package:culcap/screens/login.dart';
import 'package:flutter/material.dart';

import '../sign_up.dart';

class AuthPage extends StatefulWidget {
  AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  //Initial View
  bool showLoginPage = true;

  void toggleScreens() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(showSignUp: toggleScreens);
    } else {
      return SignUp(showLoginPage: toggleScreens);
    }
  }
}
