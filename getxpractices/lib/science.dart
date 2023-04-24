import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
//import 'package:get/get.dart';
class Science extends StatelessWidget {
  const Science({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:Text("Science",style:TextStyle(fontSize:16,color:Colors.red ,fontWeight:FontWeight.bold ,letterSpacing:0.6, ) ,),) ,
      body:Center(

        child:ElevatedButton(onPressed: (){
          Get.toNamed("/");
          ///Get.offNamed("/");
          ///Get.offAllNamed("/");
        }, child:Text ("Return Home Page"),),


      ) ,


    
    );
  }
}
