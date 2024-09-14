import 'package:flutter/material.dart';

void main() {
  runApp(const MutasiPage());
}

class MutasiPage extends StatelessWidget {
  const MutasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> dummyMutasi = [
      {"date": "12 Sep 2024", "description": "Pembayaran Listrik", "amount": "-Rp 200.000"},
      {"date": "11 Sep 2024", "description": "Gaji", "amount": "+Rp 5.000.000"},
      {"date": "10 Sep 2024", "description": "Pembelian Pulsa", "amount": "-Rp 50.000"},
      {"date": "09 Sep 2024", "description": "Transfer ke Budi", "amount": "-Rp 1.000.000"},
      {"date": "08 Sep 2024", "description": "Transfer dari Andi", "amount": "+Rp 2.000.000"},
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mutasi Rekening'),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/BG_bank.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
            padding: const EdgeInsets.all(20),
            itemCount: dummyMutasi.length,
            itemBuilder: (context, index) {
              final mutasi = dummyMutasi[index];
              return Card(
                color: Colors.white.withOpacity(0.8),
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: ListTile(
                  title: Text(
                    mutasi['description']!,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(mutasi['date']!),
                  trailing: Text(
                    mutasi['amount']!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
      
    );
  }
}
