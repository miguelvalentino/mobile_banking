import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transfer Options'),
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DaftarTransfer(),
                  ),
                );
              },
              child: const Text('Daftar Transfer'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TransferDetailPage(),
                  ),
                );
              },
              child: const Text('Transfer'),
            ),
          ],
        ),
      ),
    );
  }
}

class DaftarTransfer extends StatelessWidget {
  const DaftarTransfer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Transfer'),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text(
            'Ini adalah halaman Daftar Transfer',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}

class TransferDetailPage extends StatelessWidget {
  const TransferDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transfer'),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text(
            'Ini adalah halaman Transfer',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
