import 'package:flutter/material.dart';
import 'home_screen.dart';
import '../transfer.dart';
import '../card_detail.dart';
import 'notification.dart';


class BankHomePage extends StatefulWidget {
  const BankHomePage({super.key});

  @override
  State<BankHomePage>createState()=>_BankHomePageState();
}

class _BankHomePageState extends State<BankHomePage>{
  int curr=0;
  final List<Widget>pages=[
    const HomeScreen(),
    const HomeScreen(),//transaksi
    NotificationScreen(),//notifikasi
    CardDetailPage(),//profile
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:pages[curr],
      bottomNavigationBar:NavigationBar(
        onDestinationSelected:(int index) {
          if(index==1){
            _tranferOptions(context);
          }else{
            setState((){
            curr=index;
          });
          }
        },
        indicatorColor:Colors.black,
        selectedIndex:curr,
        destinations:const[
          NavigationDestination(
            icon:Icon(Icons.home),
            label:'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.wallet),
            label: 'Transactions',
          ),
          NavigationDestination(
            icon: Icon(Icons.notifications),
            label: 'notification',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
  void _tranferOptions(BuildContext context){
    showModalBottomSheet(
    context: context, 
    builder: (BuildContext context){
      return Container(
        padding: const EdgeInsets.all(16.0),
        height:200,
        child:Column(
          mainAxisSize: MainAxisSize.min,
          children:<Widget>[
            ListTile(
              leading: const Icon(Icons.question_mark_rounded),
              title:const Text('placeholder'),
              onTap:(){
                Navigator.of(context).pop();
                setState((){
                  curr=0;
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context)=>const Placeholder()),);
              }
            ),
            ListTile(
              leading: const Icon(Icons.question_mark_rounded),
              title:const Text('placeholder'),
              onTap:(){
                Navigator.of(context).pop();
                setState((){
                  curr=0;
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context)=>const Placeholder()),);
              }
            ),
            ListTile(
              leading: const Icon(Icons.question_mark_rounded),
              title:const Text('placeholder'),
              onTap:(){
                Navigator.of(context).pop();
                setState((){
                  curr=0;
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context)=>const Placeholder()),);
              }
            ),
          ]
        )
      );
    }
    );
  }
}
