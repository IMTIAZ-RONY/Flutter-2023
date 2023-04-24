import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
//import 'package:get/get.dart';
class Science extends StatelessWidget {
  const Science({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:Text("Science",
        style:TextStyle(fontSize:16,color:Colors.red ,fontWeight:FontWeight.bold ,letterSpacing:0.6, ) ,),) ,
      body:Center(
      child:Column(
        children: [
          Text(''' The world stand on Science.We always benifated by Science''',
            style:TextStyle(color:Colors.amber,fontSize:16,  ) ,),
           SizedBox(height:250 ,),
          ElevatedButton(onPressed: (){
            Get.toNamed("/");
            ///Get.offNamed("/");
            ///Get.offAllNamed("/");
          }, child:Text ("Return Home Page"),),

        ],

      ) ,

      ) ,


    
    );
  }
}
