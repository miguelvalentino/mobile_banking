import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'transfer.dart';
import 'account_info.dart';
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
    const TransferPage(),//transaksi
    const NotificationScreen(),//notifikasi
    const AccInfo(),//profile
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:pages[curr],
      bottomNavigationBar:NavigationBar(
        onDestinationSelected:(int index) {
          setState((){
            curr=index;
          });
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
}
