import 'package:flutter/material.dart';

class BankHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Akun Bank Anda'),
      ),
      body: Container(
        // Apply the BoxDecoration to the Container
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/pixelart.jpeg"), // Location of the image
            fit: BoxFit.cover, // Ensures the image covers the entire container
          ),
        ),
        child: Center(
          child: Text(
            'Selamat datang di halaman akun bank Anda!',
            style: TextStyle(
                fontSize: 25,
                color:
                    Colors.red), // Optional: Adjust text color for visibility
          ),
        ),
      ),
    );
  }
}
