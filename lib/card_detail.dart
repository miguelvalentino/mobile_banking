import 'package:flutter/material.dart';
import 'detailed_card_view.dart';
import 'package:mobile_banking/buttonsfile/detailed_card_view_button.dart';
import 'delete_account.dart';

class CardDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Akun Saya'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/detail_kartu.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            DetailedViewButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailedViewPage()),
                );
              },
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () async {
                bool? result = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DeleteAccountPage()),
                );

                if (result == true) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Akun berhasil dihapus'),
                    ),
                  );
                }
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 0, 0),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                  child: Text(
                    "Delete Account",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
