import '../models/notification.dart';
import 'package:flutter/material.dart';

class NotificationDetailsScreen extends StatelessWidget {
  final NotificationObject notificationObject;

  const NotificationDetailsScreen({super.key, required this.notificationObject});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text(notificationObject.title),
        backgroundColor: const Color.fromARGB(255, 0, 89, 255),
      ),
      body:Padding(
        padding:const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(notificationObject.description,
            style:const TextStyle(
              fontSize:20
            )),
            const SizedBox(
              height:20
            ),
            Text(
              'Timestamp:${notificationObject.timestamp}', 
            style:const TextStyle(
              color:Colors.black,
            )),
            const SizedBox(height:20),
          ],
        ),
      ),
    );
  }
}
