import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:Text("Get-X Bottom Sheet",),
        toolbarHeight:60,toolbarOpacity:1,
        centerTitle: true,
      ) ,

      backgroundColor:Colors.purple ,


      body:Center(
        child:ElevatedButton(onPressed: (){
          Get.bottomSheet(
            Container(
              height:300 ,
              color:Colors.green,
              child:Column(
                children: [
                  Text( "Given division name of Bangladesh.See the below...",
                    style:TextStyle(color:Colors.pink,fontSize: 16) ,),
                  SizedBox(height:4 ,),
                  Text( "'                   DHAKA                        '",
                    style:TextStyle(color:Colors.yellow,fontSize: 14) ,),
                  SizedBox(height:2 ,),
                  Text( "'                 CHITTAGONG                     '",
                    style:TextStyle(color:Colors.yellow,fontSize: 14) ,),
                  SizedBox(height:2 ,),
                  Text( "'                   SYLET                        '",
                    style:TextStyle(color:Colors.yellow,fontSize: 14) ,),
                  SizedBox(height:2 ,),
                  Text( "'                  BARISHAL                      '",
                    style:TextStyle(color:Colors.yellow,fontSize: 14) ,),
                  SizedBox(height:2 ,),
                  Text( "'                 MYMENSINGH                     '",
                    style:TextStyle(color:Colors.yellow,fontSize: 14) ,),
                  SizedBox(height:2 ,),
                  Text( "'                   KHULNA                       '",
                    style:TextStyle(color:Colors.yellow,fontSize: 14) ,),
                  SizedBox(height:2 ,),
                  Text( "'                  RANGPUR                       '",
                    style:TextStyle(color:Colors.yellow,fontSize: 14) ,),
                  SizedBox(height:2 ,),
                  Text( "'                  JASHORE                       '",
                    style:TextStyle(color:Colors.yellow,fontSize: 14) ,),
                  SizedBox(height:2 ,),
                  Text( "'                  DINAJPUR                      '",
                    style:TextStyle(color:Colors.yellow,fontSize: 14) ,),
                  SizedBox(height:4,),
                  ElevatedButton(onPressed: ()=>{
                    Get.back(closeOverlays:true )
                  }, child:Text("Close")),
                ],
              ) ,
            ),
            elevation: 10,
            enterBottomSheetDuration: Duration(seconds:15),
            enableDrag:true,
            isDismissible:false,
            barrierColor:Colors.greenAccent,

          );
        }, child:Text("Divission of Bangladesh",style:TextStyle(color:Colors.yellow,) ,), ) ,     ) ,


    );
  }
}
