import 'package:flutter/material.dart';

class Saldo extends StatelessWidget {
  const Saldo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center, 
      children: [
        Container(
          height: 150,
          color: Colors.white,
          padding: const EdgeInsets.all(20), 
          child: const Center(
            child: Text(
              "Rp 1.000.000", 
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black, 
              ),
            ),
          ),
        ),
      ],
    );
  }
}
