import 'package:flutter/material.dart';
import 'package:mobile_banking/screens/login_page.dart';
import 'package:mobile_banking/buttonsfile/make_acc_button2.dart';


class MakeAccPage2 extends StatefulWidget {
  const MakeAccPage2({super.key});

  @override
  _MakeAccPageState createState() => _MakeAccPageState();
}

class _MakeAccPageState extends State<MakeAccPage2> {
  bool _isChecked = false;

  final usernameController = TextEditingController();
  final jobController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void _onCheckboxChanged(bool? value) {
    setState(() {
      _isChecked = value ?? false;
    });
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
              Text('Buat Akun 2/2',
              style: TextStyle(
                color: const Color.fromARGB(255, 14, 128, 228),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              ),
        
              const SizedBox(height: 25,),
        
              //Username
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  hintText: 'User Name',
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
              //pekerjaan
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                 controller: jobController,
                decoration: InputDecoration(
                  hintText: 'Pekerjaan',
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
            
            //password
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: 'Password',
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

            //confirm pw
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                controller: confirmPasswordController,
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
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

            const SizedBox( height: 20,),
           Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: CheckboxListTile(
                    title: Text(
                      "Saya menyetujui syarat dan ketentuan yang berlaku",
                      style: TextStyle(color: Colors.black),
                    ),
                    value: _isChecked,
                    onChanged: _onCheckboxChanged,
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ),

              //buat akun
            const SizedBox(height: 20,),
            MakeAccButton2(
              onTap: () {
                if (usernameController.text.isEmpty ||
                            jobController.text.isEmpty ||
                            passwordController.text.isEmpty ||
                            confirmPasswordController.text.isEmpty ||
                            !_isChecked) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Semua bagian harus diisi!'),
                              backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                            ),
                          );
                        } else if (passwordController.text != confirmPasswordController.text) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Password atau Konfirmasi Password Tidak sama!'),
                              backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                            ),
                          );
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                  ),
                );
              }
            },
            ),
            
            ],),
          ),
        ),
        ),
        ],
      ),
    );
  }
}