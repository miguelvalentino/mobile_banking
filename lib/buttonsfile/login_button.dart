import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {

  final Function()? onTap;

  const LoginButton({super.key, required this.onTap});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 0, 183, 255),
          borderRadius: BorderRadius.circular(8)
          ),
        child: const Center(
          child: Text(
            "Sign in",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16),
            ),
        ),
      ),
    );
  }
}