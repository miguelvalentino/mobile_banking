import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget{
  const NotificationScreen({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(),
      body:list()
    );
  }
  Widget list(){
    return ListView.separated(itemBuilder: (context,index){
      return listViewItem(index);
    }, separatorBuilder: (context,index){
      return const Divider(height:0);
    }, itemCount: 15);
  }

  Widget listViewItem(int index){
    return Container(
      margin:const EdgeInsets.symmetric(horizontal:13.0,vertical:10.0),
      child:Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          notiIcon(),
          Expanded(
            child: Container(
              margin:const EdgeInsets.only(left:10),
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children:[
                  message(index),
                  timeStamp(index),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget notiIcon(){
    return Container(
      height:50,
      width:50,
      padding:const EdgeInsets.all(10),
      decoration:const BoxDecoration(
        shape:BoxShape.circle,
        color:Colors.grey,
      ),
      child:const Icon(
        Icons.notifications,
        size:25,
        color:Colors.black
      ),
    );
  }

  Widget message(int index){
    double textSize=14.0;
    return RichText(
      maxLines:3,
      overflow:TextOverflow.ellipsis,
      text:TextSpan(
        text:"message ",
        style:TextStyle(
          fontSize:textSize,
          color:Colors.black,
          fontWeight:FontWeight.bold
        ),
        children:const [
          TextSpan(
            text:"description",
            style:TextStyle(
              fontWeight:FontWeight.w400,
            )
          )
        ]
      ),
    );
  }

  Widget timeStamp(int index){
    return Container(
      margin:const EdgeInsets.only(top:5),
      child:const Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween,
        children:[
          Text(
            "9/25/2024",
            style:TextStyle(
              fontSize:10.0,
            ),
          ),
        ]
      )
    );
  }
} 