import 'package:flutter/material.dart';
import 'package:mobile_banking/buttonsfile/accinfo_depositobutton.dart';
import 'package:mobile_banking/buttonsfile/accinfo_mutasibutton.dart';
import 'package:mobile_banking/buttonsfile/accinfo_saldobutton.dart';
import 'package:mobile_banking/deposito.dart';
import 'package:mobile_banking/mutasi.dart';

void main(){
  runApp(const AccInfo());
}

class AccInfo extends StatelessWidget {
  const AccInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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


              ]),
          ),
        ),
      ),
    );
  }
}