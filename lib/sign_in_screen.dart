import 'package:flutter/material.dart';
import 'package:mobile_banking/bank_home_page.dart';

class SignInScreen extends StatefulWidget {
  @override
  SignInState createState() => SignInState();
}

class SignInState extends State<SignInScreen> {
  final TextEditingController accessCode = TextEditingController();
  final String correctCode = "123456";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Bank'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Masukkan 6 digit kode akses Anda',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            TextField(
              controller: accessCode,
              keyboardType: TextInputType.number,
              maxLength: 6,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: '6 digit kode akses',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: verifyCode,
              child: Text('Masuk'),
            ),
          ],
        ),
      ),
    );
  }

  void verifyCode() {
    if (accessCode.text == correctCode) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BankHomePage()),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Kode Akses Salah'),
          content: Text('Silakan coba lagi.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }
}
