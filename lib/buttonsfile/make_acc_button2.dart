import 'package:flutter/material.dart';

class MakeAccButton2 extends StatelessWidget {

  final Function()? onTap;

  const MakeAccButton2({super.key, required this.onTap});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 0, 183, 255),
          borderRadius: BorderRadius.circular(4)
          ),
        child: const Center(
          child: Text(
            "New Account",
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