import 'package:flutter/material.dart';
import 'package:mobile_banking/accinfo_saldobutton.dart';

void main(){
  runApp(const AccInfo());
}

class AccInfo extends StatelessWidget {
  const AccInfo({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/BG_bank.png"), // Lokasi gambar
            fit: BoxFit.cover, // Mengatur agar gambar memenuhi layar
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
              const SizedBox(height: 50),
        
            
            AccinfoSaldobutton(
              onTap:() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AccInfo(),
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