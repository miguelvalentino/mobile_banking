import 'package:flutter/material.dart';
import 'package:mobile_banking/account_info.dart';
import 'package:mobile_banking/payment.dart';
import 'package:mobile_banking/buttonsfile/button_Daftar.dart';
import 'package:mobile_banking/buttonsfile/button_Transfer.dart';
import 'daftar-transfer.dart';
import 'transfer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 53, 97),
      appBar: AppBar(
        title: const Text('placeholder'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 15.0,
          mainAxisSpacing: 15.0,
          children: <Widget>[
            GridButton(context, Icons.question_mark_rounded, 'Placeholder', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Placeholder()),
              );
            }),
            GridButton(context, Icons.question_mark_rounded, 'Account Info',
                () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AccInfo()),
              );
            }),
            GridButton(context, Icons.question_mark_rounded, 'Payment', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PaymentPage()),
              );
            }),
            GridButton(
              context,
              Icons.transfer_within_a_station,
              'M-Transfer',
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TransferOptionsPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget GridButton(BuildContext context, IconData iconData, String label,
      VoidCallback onPressed) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2.0),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(iconData, size: 40.0, color: Colors.blue),
            const SizedBox(height: 8.0),
            Text(
              label,
              style: const TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class TransferOptionsPage extends StatelessWidget {
  const TransferOptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Transfer Options'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ButtonDaftar(onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DaftarTransfer()),
            );
          }),
          const SizedBox(height: 20), // Spasi antara tombol
          ButtonTransfer(onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TransferPage()),
            );
          }),
        ],
      ),
    );
  }
}
