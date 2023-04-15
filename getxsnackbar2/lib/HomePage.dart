import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:Text("Get-X",),
        toolbarHeight:60,toolbarOpacity:1,
        centerTitle: true,
      ) ,
     backgroundColor:Colors.purple ,


      body:Center(
 child:ElevatedButton(onPressed: (){
   Get.snackbar("Gensulin", "Life Saving Drug.So Becareful.",
           messageText:Text("Life Saving Drug.So Becareful.",style:TextStyle(fontSize:14,color:Colors.pink ) ,) ,
           colorText:Colors.green ,
           backgroundColor:Colors.amber ,
           snackPosition:SnackPosition.BOTTOM,
           titleText:Text("Gensulin",style:TextStyle(fontSize:16,color:Colors.indigoAccent  ) ,) ,
           showProgressIndicator: true,
           isDismissible:true,
           dismissDirection:DismissDirection.horizontal ,
           duration:Duration(seconds:15 ),
           animationDuration:Duration(milliseconds:1200 ) ,
           borderWidth: 2,
           borderColor: Colors.red,
           borderRadius: 5,
           padding:EdgeInsets.all(4) ,
           margin: EdgeInsets.all(6) ,
           icon:Icon(Icons.sanitizer_rounded)


   );
 }, child:Text("Click Me",style:TextStyle(color:Colors.yellow, ) ,), ) ,     ) ,


    );
  }
}
