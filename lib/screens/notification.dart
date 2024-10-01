import 'package:flutter/material.dart';
import '../models/notification.dart';
import 'notification_details.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NotificationScreenState createState()=>_NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  late List<NotificationObject>notifications;

  @override
  void initState() {
    super.initState();
    notifications=NotificationObjectModel.generateFakeNotificationObjects();
  }

  void _markAsRead(int index) {
    setState(() {
      notifications[index].read=true;
    });
  }

  void _deleteNotification(int index) {
    setState((){
      notifications.removeAt(index);
    });
  }

  void _deleteAllRead() {
    setState((){
      notifications.removeWhere((notification)=>notification.read);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:const Text('Notifications'),
        actions:[
          IconButton(
            icon:const Icon(
              Icons.delete_sweep, 
              color:Colors.red
              ),
            onPressed:_deleteAllRead,
          ),
        ],
      ),
      body:ListView.separated(
        itemCount:notifications.length,
        itemBuilder:(context,index) {
          final notificationObject=notifications[index];
          return GestureDetector(
            onTap:(){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:(context)=>NotificationDetailsScreen(notificationObject:notificationObject),
                ),
              );
              _markAsRead(index);
            },
            child:ListTile(
              leading:CircleAvatar(
                backgroundColor:notificationObject.read?Colors.grey:Colors.black,
                child:const Icon(
                  Icons.notifications, 
                  color:Colors.white
                ),
              ),
              title: RichText(
                text:TextSpan(
                  children:[
                    TextSpan(
                      text:notificationObject.title,
                      style:const TextStyle(
                        fontWeight:FontWeight.bold, 
                        color:Colors.black
                      ),
                    ),
                    TextSpan(
                      text:' - ${notificationObject.description}',
                      style:const TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              subtitle:Text(notificationObject.timestamp),
              trailing:IconButton(
                icon:const Icon(
                  Icons.delete,
                  color: Colors.red
                ),
                onPressed: () {
                  _deleteNotification(index);
                },
              ),
            ),
          );
        },
        separatorBuilder:(context,index)=>const Divider(),
      ),
    );
  }
}
