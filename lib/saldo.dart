import 'package:flutter/material.dart';


class Saldo extends StatelessWidget {
  const Saldo({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Info Saldo'),
      content: const Text('Saldo Anda Rp 15.000.000'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Tutup'),
        ),
      ],
      contentPadding: const EdgeInsets.all(20.0),
    );
  }
}
