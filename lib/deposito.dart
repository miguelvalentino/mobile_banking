import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_banking/buttonsfile/depositobut.dart';
import 'package:mobile_banking/buttonsfile/login_button.dart';
import 'package:mobile_banking/login_page.dart';

void main() {
  runApp(const DepoPage());
}

class DepoPage extends StatefulWidget {
  const DepoPage({super.key});

  @override
  State<DepoPage> createState() => _DepoPageState();
}

class _DepoPageState extends State<DepoPage> {
  final TextEditingController _amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Deposito'),
        backgroundColor: const Color.fromARGB(255, 0, 89, 255),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).maybePop(),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg_baru.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 200),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    controller: _amountController, 
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color.fromARGB(255, 0, 183, 255),),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                DepConButton(
                  onTap: () {
                    final inputAmount = int.tryParse(_amountController.text) ?? 0;

                    if (inputAmount >= 10000000) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Sukses memasukan Deposito"),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Jumlah minimal deposito 10.000.000"),
                        ),
                      );
                    }
                  },
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
