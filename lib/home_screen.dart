import 'package:flutter/material.dart';
import 'package:mobile_banking/account_info.dart';
import 'package:mobile_banking/payment.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 0, 53, 97),
      appBar:AppBar(
        title:const Text('placeholder'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount:3,
          crossAxisSpacing:15.0,
          mainAxisSpacing:15.0,
          children: <Widget>[
            GridButton(context,Icons.question_mark_rounded,'plcaeholder',() {
              Navigator.push(
                context,
                MaterialPageRoute(builder:(context)=>const Placeholder())
              );
            }),
            GridButton(context,Icons.question_mark_rounded,'Account Info',() {
              Navigator.push(
                context,
                MaterialPageRoute(builder:(context)=>const AccInfo())
              );
            }),
            GridButton(context,Icons.question_mark_rounded,'Payment',() {
              Navigator.push(
                context,
                MaterialPageRoute(builder:(context)=> PaymentPage())
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget GridButton(BuildContext context, IconData iconData, String label, VoidCallback onPressed) {
    return Container(
      decoration:BoxDecoration(
        border:Border.all(color:Colors.white,width:2.0),
        borderRadius:BorderRadius.circular(16.0)
      ),
      child:InkWell(
        onTap:onPressed,
        borderRadius:BorderRadius.circular(16.0),
        child:Column(
          children:<Widget>[
            Icon(
              iconData,
              size:40.0,
              color:Colors.blue,
            ),
            const SizedBox(height:8.0),
            Text(
              label,
              style:const TextStyle(fontSize:16.0,color:Colors.white,fontWeight:FontWeight.bold),
            ),
          ]
        ),
      ),
    );
  }
}