import 'package:flutter/material.dart';
import 'package:mobile_banking/buttonsfile/accinfo_depositobutton.dart';
import 'package:mobile_banking/buttonsfile/accinfo_mutasibutton.dart';
import 'package:mobile_banking/buttonsfile/accinfo_saldobutton.dart';
import 'package:mobile_banking/buttonsfile/card_detail_button.dart';
import 'package:mobile_banking/deposito.dart';
import 'package:mobile_banking/mutasi.dart';
import 'package:mobile_banking/card_detail.dart';

void main() {
  runApp(const AccInfo());
}

class AccInfo extends StatelessWidget {
  const AccInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account Info'),
        backgroundColor: const Color.fromARGB(255, 0, 89, 255),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).maybePop(),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg_baru.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 180),
                AccinfoSaldobutton(),
                const SizedBox(height: 50),
                MutasiButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MutasiPage(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 50),
                DepositoButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DepoPage(),
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
