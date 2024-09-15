import 'package:flutter/material.dart';
import 'package:mobile_banking/daftar-transfer.dart';
import 'package:mobile_banking/transfer.dart';
import 'package:mobile_banking/buttonsfile/login_button.dart';

class TransfersPage extends StatelessWidget {
  const TransfersPage({super.key});

  void test() {
    print("punten");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/pixelart.jpeg"), // Lokasi gambar
            fit: BoxFit.cover, // Mengatur agar gambar memenuhi layar
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                LoginButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TransferPage(),
                      ),
                    );
                  },
                ),
                LoginButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DaftarTransfer(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
