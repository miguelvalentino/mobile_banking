import 'package:flutter/material.dart';
import 'package:mobile_banking/login_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});


void test() {
  print("punten");
}


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/pixelart.jpeg"), // Lokasi gambar
            fit: BoxFit.cover, // Mengatur agar gambar memenuhi layar
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
              const SizedBox(height: 50),
        
              //logo bank
        
              Icon(
              Icons.currency_exchange,
              size: 100),
              
              SizedBox(height: 50,),
        
              //Selamat datang
              Text('Selamat datang ke BankMik!',
              style: TextStyle(
                color: const Color.fromARGB(255, 11, 135, 251),
                fontSize: 16,
              ),
              ),
        
              const SizedBox(height: 25,),
        
              //username
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
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
            
            const SizedBox(height: 15),
              //password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
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
            
            const SizedBox(height: 20,),
              //sign in
            LoginButton(
              onTap: test,
            )
            
              //buat akun
            ],),
          ),
        ),
      ),
    );
  }
}