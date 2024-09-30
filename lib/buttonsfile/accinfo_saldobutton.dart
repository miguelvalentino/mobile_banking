import 'package:flutter/material.dart';
import 'package:mobile_banking/saldo.dart';
import 'package:popover/popover.dart';

class AccinfoSaldobutton extends StatelessWidget {
  const AccinfoSaldobutton({super.key, required Null Function() onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showPopover(
        context: context,
        bodyBuilder: (context) => const Saldo(),
        width: 250,
        height: 150,
        backgroundColor: Colors.white,
        direction: PopoverDirection.top,
      ),
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 140), 
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
