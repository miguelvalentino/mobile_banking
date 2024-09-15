import 'package:flutter/material.dart';

class TransferButtons extends StatelessWidget {
  const TransferButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, '/transfer'),
          child: const Text('Halaman Transfer'),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, '/daftarTransfer'),
          child: const Text('Daftar Rekening'),
        ),
      ],
    );
  }
}

