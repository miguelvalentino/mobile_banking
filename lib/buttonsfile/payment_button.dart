import 'package:flutter/material.dart';

class PaymentButton extends StatelessWidget {

  final Function()? onTap;

  const PaymentButton({super.key, required this.onTap});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(8)
          ),
        child: const Center(
          child: Text(
            "Payment",
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
