import 'package:flutter/material.dart';
import 'package:projectapp/components/myTextField.dart';
import 'package:projectapp/components/myButton.dart';

// Page where users login

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.onTap});
  final void Function()? onTap;

  @override 
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  // text controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // sign in function
  void signIn() {}

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xFF89CFF0),
      body: SafeArea(
        child: Center( 
          child: Padding(
          padding: const EdgeInsets.all(20.0),
          child:
          Container(
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: const Color(0xFF15578F),
              borderRadius: BorderRadius.circular(10.0)
            ),
            
            child:
            Column(
              children: [
              // email field
              myTextField(
                controller: emailController,
                hintText: 'Enter Email', 
                obscureText: false 
              ),

              const SizedBox(height: 20),

              // password field
              myTextField(
                controller: passwordController,
                hintText: 'Enter Password', 
                obscureText: true 
              ),
              
              const SizedBox(height: 20),

              // signin button

              myButton(
                onTap: () {},
                text: "Sign In",
              ),

              const SizedBox(height: 20),

              // signup button
              GestureDetector(
              child: myButton(
                onTap: widget.onTap,
                text: "Sign Up",
              )
              ),

        ],
            )
          )
          )
        )
      )
    );
  }
}