import 'package:flutter/material.dart';
import 'package:mobile_banking/mutasi.dart';
import 'package:mobile_banking/testing_buttons.dart';
import 'package:mobile_banking/buttonsfile/login_button.dart';
import 'package:mobile_banking/buttonsfile/make_acc_button.dart';
import 'package:mobile_banking/make_acc_page.dart';
import 'package:mobile_banking/sign_in_screen.dart';
import 'package:mobile_banking/buttonsfile/make_acc_button1.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void test() {
    print("punten");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack( 
        children: [
          Container(  
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/bg_baru.png"),
                fit: BoxFit.cover, 
              ),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(  
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(height: 50),

                    //logo bank
                    Icon(Icons.currency_exchange, size: 100),

                    const SizedBox(height: 50),

                    //Selamat datang
                    Text(
                      'Selamat datang ke BankMik!',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 14, 128, 228),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 25),

                    //username
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Username',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: const Color.fromARGB(255, 0, 183, 255)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: const Color.fromARGB(255, 0, 183, 255)),
                          ),
                          fillColor: const Color.fromARGB(255, 255, 255, 255),
                          filled: true,
                        ),
                      ),
                    ),

                    const SizedBox(height: 15),

                    //password
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: const Color.fromARGB(255, 0, 183, 255)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: const Color.fromARGB(255, 0, 183, 255)),
                          ),
                          fillColor: const Color.fromARGB(255, 255, 255, 255),
                          filled: true,
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    //sign in
                    LoginButton(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignInScreen(),
                          ),
                        );
                      },
                    ),

                    //buat akun
                    const SizedBox(height: 35),

                    Text(
                      'Tidak Punya Akun? Daftar sekarang!',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 14, 128, 228),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 20),

                    MakeAccButton1(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MakeAccPage(),
                          ),
                        );
                  },
                    ),
                  ],
            ),
              ),
         ),
          ),
      ],
      ),
    );
  }
}
