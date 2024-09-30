import 'package:flutter/material.dart';

class DepConButton extends StatelessWidget {

  final Function()? onTap;

  const DepConButton({super.key, required this.onTap});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 0, 89, 255),
          borderRadius: BorderRadius.circular(8)
          ),
        child: const Center(
          child: Text(
            "Ajukan Deposito",
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