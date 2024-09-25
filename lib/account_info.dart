import 'package:flutter/material.dart';
import 'package:mobile_banking/buttonsfile/accinfo_depositobutton.dart';
import 'package:mobile_banking/buttonsfile/accinfo_mutasibutton.dart';
import 'package:mobile_banking/buttonsfile/accinfo_saldobutton.dart';
import 'package:mobile_banking/deposito.dart';
import 'package:mobile_banking/mutasi.dart';
import 'package:mobile_banking/buttonsfile/payment_button.dart';
import 'package:mobile_banking/payment.dart';


void main(){
  runApp(const AccInfo());
}

class AccInfo extends StatelessWidget {
  const AccInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Account Info'),
          backgroundColor: Colors.blue,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).maybePop(),
          ),
        ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/BG_bank.png"), 
            fit: BoxFit.cover, 
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
              const SizedBox(height: 200),


            AccinfoSaldobutton(
              onTap:() {
              },
            ),

            const SizedBox(height: 50),

            MutasiButton(
              onTap:() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MutasiPage(),
                  ),
                );
              },
            ),

            const SizedBox(height: 50),

            DepositoButton(
              onTap:() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DepoPage(),
                  ),
                );
              },
            ),
            const SizedBox(height: 50),

            PaymentButton(
              onTap:() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PaymentPage(),
                  ),
                );
              },
            )


              ]),
          ),
        ),
      ),
    );
  }
}