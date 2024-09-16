import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pembayaran'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/BG_bank.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Tombol Pulsa
              ElevatedButton(
                onPressed: () {
                },
                child: const Text('Pulsa (Rp100.000)'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40, vertical: 20),
                  backgroundColor: Colors.blue,
                ),
              ),
              const SizedBox(height: 20),

              // Tombol Internet
              ElevatedButton(
                onPressed: () {
                },
                child: const Text('Internet (Rp100.000)'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40, vertical: 20),
                  backgroundColor: Colors.blue, 
                ),
              ),
              const SizedBox(height: 20),

              // Tombol Pajak
              ElevatedButton(
                onPressed: () {
                },
                child: const Text('Pajak (Rp100.000)'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40, vertical: 20),
                  backgroundColor: Colors.blue, 
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}