import 'package:flutter/material.dart';
import 'package:mobile_banking/login_page.dart';
import 'package:mobile_banking/buttonsfile/make_acc_button.dart';
import 'package:mobile_banking/make_acc_page2.dart';


class MakeAccPage  extends StatelessWidget{
  const MakeAccPage({super.key});

  void test() {
  print("punten");
 }

  // This widget is the root of your application.
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
        
              Icon(
              Icons.currency_exchange,
              size: 100),
              
              SizedBox(height: 50,),
        
              //tulisan buat akun
              Text('Buat Akun 1/2',
              style: TextStyle(
                color: const Color.fromARGB(255, 14, 128, 228),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              ),
        
              const SizedBox(height: 25,),
        
              //Email
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: const Color.fromARGB(255, 0, 183, 255)),  
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: const Color.fromARGB(255, 0, 183, 255)),  
                  ),
                  fillColor: const Color.fromARGB(255, 255, 255, 255),
                  filled: true,
                ),
              ),
            ),
            
            const SizedBox(height: 15),
              //username
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Nama Lengkap',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: const Color.fromARGB(255, 0, 183, 255)),    
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: const Color.fromARGB(255, 0, 183, 255)),  
                  ),
                  fillColor: const Color.fromARGB(255, 255, 255, 255),
                  filled: true,
                ),
              ),
            ),
            
            //NIK
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'NIK',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: const Color.fromARGB(255, 0, 183, 255)),  
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: const Color.fromARGB(255, 0, 183, 255)),  
                  ),
                  fillColor: const Color.fromARGB(255, 255, 255, 255),
                  filled: true,
                ),
              ),
            ),            

            //no telp
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'No Telpon',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: const Color.fromARGB(255, 0, 183, 255)),    
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: const Color.fromARGB(255, 0, 183, 255)),  
                  ),
                  fillColor: const Color.fromARGB(255, 255, 255, 255),
                  filled: true,
                ),
              ),
            ), 


              //buat akun
            const SizedBox(height: 20,),
            MakeAccButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MakeAccPage2(),
                  ),
                );
              },
            )
            ],),
          ),
        ),
        ),
        ],
      ),
    );
  }
}