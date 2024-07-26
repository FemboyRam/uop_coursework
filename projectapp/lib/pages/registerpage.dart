import 'package:flutter/material.dart';
import 'package:projectapp/components/myTextField.dart';
import 'package:projectapp/components/myButton.dart';

// Page where users register

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key, required this.onTap});
  final void Function()? onTap;

  @override 
  State<RegisterPage> createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  // text controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  // signup function
  void signUp() {}


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

              // confirm password field
              myTextField(
                controller: confirmPasswordController,
                hintText: 'Re-Enter Password', 
                obscureText: true 
              ),
              
              const SizedBox(height: 20),

              // signup button

              myButton(
                onTap: () {},
                text: "Sign Up",
              ),

              const SizedBox(height: 20),

              // login button

              GestureDetector(
              child: myButton(
                onTap: widget.onTap,
                text: "Log In",
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