import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
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
       /* child:ElevatedButton(onPressed: (){
          Get.toNamed("/jadu");
          ///Get.offNamed("/jadu");
          ///Get.offAllNamed("/jadu");
        }, child:Text("Next Page")) ,
        */
        child:Column(
        children: [
          SizedBox(height:100 ,),
          ElevatedButton(onPressed: (){
            GetStorage().write("MyLife","Sumi Akter + Sarah");
                     }, child:Text ("Write Data"),),

          SizedBox(height:100 ,),

          ElevatedButton(onPressed: (){
            var MyName=GetStorage().read("MyLife");
            Get.snackbar(MyName,"There ara my life");

                   }, child:Text ("Read Data"),),

          SizedBox(height:100 ,),

          ElevatedButton(onPressed: (){
            //GetStorage().remove("MyLife");
            ///if you want to delete one keys values use remove;
            GetStorage().erase();
            ///if you want to delete all data use erase;

          }, child:Text ("Erase Data"),),



        ],

      ) ,

      ) ,

    );
  }
}
