import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(
          color: Colors.pink,
          child: Text("Practice"),
        ),
      ),
      body: Center(
          child: ElevatedButton(onPressed: () {
            Get.snackbar(
             "Hi","I am Imtiaz Shamim Rony",
             snackPosition:SnackPosition.BOTTOM ,
             showProgressIndicator:true ,
             snackStyle:SnackStyle.FLOATING,
            colorText:Colors.pink ,
               backgroundColor:Colors.green ,
              borderRadius:10,
              margin:EdgeInsets.all(20),
              padding:EdgeInsets.all(10),
               icon:Icon(Icons.access_time,color:Colors.white ,) ,
              duration:Duration(seconds:10 ,) ,
              isDismissible:true ,
             animationDuration:Duration(milliseconds:400 ) ,
            );
          },
              child: Text("Getx Snack Bar"))),
    );
  }
}
