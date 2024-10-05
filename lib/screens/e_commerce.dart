import 'package:flutter/material.dart';
import 'package:mobile_banking/buttonsfile/e_com_button.dart';

class ECommerce extends StatefulWidget {
  ECommerce({super.key});

  @override
  _ECommerceState createState() => _ECommerceState();
}

class _ECommerceState extends State<ECommerce> {
  final plnController = TextEditingController();
  String? selectedNominal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pembelian Token PLN"),
        backgroundColor: const Color.fromARGB(255, 0, 89, 255),
      ),
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
                controller: plnController,
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
                value: selectedNominal,
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
                  if (plnController.text.isEmpty || selectedNominal == null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                            'Nomor Pelanggan dan Nominal Token harus diisi!'),
                        backgroundColor: Colors.red,
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Sukses"),
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}