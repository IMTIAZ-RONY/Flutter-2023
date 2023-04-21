import 'package:flutter/material.dart';
//import 'package:get/get.dart';
class Science extends StatelessWidget {
  const Science({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:Text("Science",style:TextStyle(fontSize:16,color:Colors.red ,fontWeight:FontWeight.bold ,letterSpacing:0.6, ) ,),) ,
      body:Center(child:Text("The world stands on Science.Morning to night we wrap by Science blessing") ,) ,    
    
    );
  }
}
