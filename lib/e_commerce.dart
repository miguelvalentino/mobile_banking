import 'package:flutter/material.dart';
import 'package:mobile_banking/buttonsfile/e_com_button.dart';

class ECommerce extends StatelessWidget {
  const ECommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg_baru.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50), 
              Text(
                'Pembelian Token PLN',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 30),

              Text(
                'Masukkan Nomor Pelanggan PLN',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Contoh: 123456789012',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),

              Text(
                'Pilih Nominal Token',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              DropdownButtonFormField<String>(
                items: [
                  DropdownMenuItem(value: '20000', child: Text('Rp20.000')),
                  DropdownMenuItem(value: '50000', child: Text('Rp50.000')),
                  DropdownMenuItem(value: '100000', child: Text('Rp100.000')),
                  DropdownMenuItem(value: '200000', child: Text('Rp200.000')),
                ],
                onChanged: (value) {},
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  hintText: 'Pilih nominal token',
                ),
              ),
              SizedBox(height: 20),

              EComButton(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Sukses"),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
