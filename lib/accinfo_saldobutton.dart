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
        bodyBuilder: (context) => const Saldo(), // Panggil widget halaman saldo
        width: 250,
        height: 150,
        backgroundColor: Colors.white,
        direction: PopoverDirection.top, // Arah popover muncul
      ),
      child: const Center(
        child: Text(
          "Info Saldo",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
