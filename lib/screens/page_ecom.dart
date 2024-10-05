import 'package:flutter/material.dart';
import 'package:mobile_banking/buttonsfile/button_pln.dart';
import 'package:mobile_banking/screens/e_commerce.dart';

class PageEcom extends StatelessWidget {
  const PageEcom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("E-Commerce Page"),
        backgroundColor: const Color.fromARGB(255, 0, 89, 255),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg_baru.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column( 
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
