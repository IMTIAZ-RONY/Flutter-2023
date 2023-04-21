import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxpractices/science.dart';
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:Text("My Home Page",
        style: TextStyle(fontSize:16 ,fontWeight:FontWeight.bold ,color:Colors.amber ),) ,
        elevation:10 ,toolbarHeight:60 ,toolbarOpacity:1 ,
        toolbarTextStyle:TextStyle(wordSpacing:3,color:Colors.deepPurple  ),) ,
      body:Center(
        child:ElevatedButton(onPressed: (){
          Get.to(Science());
          ///Get.off(Science());
          ///Get.offAll(Science());
        }, child:Text("Next Page")) ,
      ) ,

    );
  }
}
