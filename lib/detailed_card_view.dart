import 'package:flutter/material.dart';

class DetailedViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Kartu'),
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'NOMOR KARTU:',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        '1234 5678 9010 1112',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'MASA BERLAKU:',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        '12/28',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
