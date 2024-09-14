import 'package:flutter/material.dart';
import 'package:mobile_banking/buttonsfile/depositobut.dart';
import 'package:mobile_banking/buttonsfile/login_button.dart';
import 'package:mobile_banking/login_page.dart';

void main() {
  runApp(const DepoPage());
}

class DepoPage extends StatelessWidget {
  const DepoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                      ),
                      fillColor: Colors.grey.shade400,
                      filled: true,
                    ),
                  ),
                ),
                DepConButton(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Sukses"),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                // TOMBOL EXIT SMEENTARA
                LoginButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
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
