import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dialog Uses Getx",
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Colors.lightGreen, letterSpacing: 0.4),),),
      body: Center(
        child: ElevatedButton(onPressed: () {
          Get.defaultDialog(
            title:"Alert ! Delete" ,
            titlePadding:EdgeInsets.all(20) ,
            titleStyle:TextStyle(color:Colors.red  ) ,
            middleText:"Once Delete , You never get it back.",
            middleTextStyle: TextStyle(color:Colors.yellow ),
            backgroundColor:Colors.cyan ,
           radius: 10,
           textCancel:"Not Now" ,
           textConfirm:"Confirm" ,
           cancelTextColor:Colors.black ,
           confirmTextColor:Colors.black ,
            buttonColor:Colors.red ,
            barrierDismissible:false ,
            onCancel:()=>{Get.back(closeOverlays:true )} ,
            onConfirm:()=>{
              Get.back(closeOverlays:true )},
              content:Column(
                children: [
                  Container(child:Text("Hello ! 1"),),
                  Container(child:Text("Hello ! 2"),),
                  Container(child:Text("Hello ! 3 "),),
                    ],
              )


          );
        },
            child: Text("Click Me")),

      ),
    );
  }
}