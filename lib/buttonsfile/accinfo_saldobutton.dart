import 'package:flutter/material.dart';
import 'package:mobile_banking/saldo.dart';

class AccinfoSaldobutton extends StatelessWidget {
  const AccinfoSaldobutton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return const Saldo();
          },
        );
      },
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 130),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 0, 89, 255),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Text(
            "Info Saldo",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}