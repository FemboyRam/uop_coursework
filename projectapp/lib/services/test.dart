import 'package:flutter/material.dart';
import 'package:projectapp/pages/LoginPage.dart';
import 'package:projectapp/pages/registerpage.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override 
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  // show login screen
  bool showLoginPage = true;


  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

    @override 
    Widget build(BuildContext context) {
      if (showLoginPage) {
        return LoginPage(onTap: togglePages); 
        // If on login page, swap to register page
      } else {
        return RegisterPage(onTap: togglePages);
        // If on register page, swap to login page
      }
    }

}