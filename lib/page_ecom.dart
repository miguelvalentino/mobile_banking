import 'package:flutter/material.dart';
import 'package:mobile_banking/buttonsfile/button_pln.dart';
import 'package:mobile_banking/e_commerce.dart';

class PageEcom extends StatelessWidget {
  const PageEcom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("E-Commerce Page"),
        backgroundColor: Colors.blue, // Sesuaikan dengan warna yang kamu inginkan
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg_baru.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column( // Use Column to structure multiple widgets
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 20),
              ButtonPln(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ECommerce(),
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
