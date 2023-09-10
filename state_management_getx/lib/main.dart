import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:draggable_fab/draggable_fab.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:ScreenOne() ,
    );
  }
}
class ScreenOne extends StatelessWidget {
   ScreenOne({Key? key}) : super(key: key);
   final Counter count=Get.put(Counter());
   var  controller=Get.find<Counter>();

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor:Colors.pink ,
        appBar:AppBar(
          elevation:1 ,
          toolbarHeight: 65,
          toolbarOpacity: 1,
          backgroundColor:Colors.green ,
         title:Text("ScreenOne",style:TextStyle(fontSize:24,
             color:Colors.yellowAccent,fontWeight:FontWeight.w600   ) ,),

          actions: [
            IconButton(onPressed: (){
              Get.to(ScreenTwo());
            }, icon:Icon(Icons.next_plan_outlined)) ,
          ],

        ) ,
        body:Center(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center ,
           children: [
             Padding(
               padding:  EdgeInsets.all(10.0),
               child: Text("You can press here many times .Every press increase your value +1",style:TextStyle(color:Colors.green,fontSize:18,fontWeight: FontWeight.w600  ) ,),
             ),
             Obx(
                     ()=>Text("Clicks:${controller.value.toString()}",
                       style:TextStyle(color:Colors.yellow,fontSize:22,fontWeight:FontWeight.w900   ) ,)),
             SizedBox(height:20 ,),

             Draggable(
               feedback:FloatingActionButton(onPressed: (){},
                 tooltip:"increment" ,child:Icon(Icons.add) ,),
               child:FloatingActionButton(onPressed:(){controller.incrementCount();},
                 tooltip:"increment",child:Icon(Icons.add)  ,),
             )
           ],

          ),
        ),
      ),
    );
  }
}
class ScreenTwo extends StatelessWidget {
   ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var  controller=Get.find<Counter>();

    return Scaffold(
      backgroundColor:Colors.purple ,
      appBar:AppBar(
        elevation: 70,
        toolbarHeight: 65,
        toolbarOpacity: 1,
        backgroundColor:Colors.indigo ,
        title: Text("ScreenTwo",style:TextStyle(fontSize:24,
            color:Colors.yellowAccent,fontWeight:FontWeight.w600   ) ,),
        actions: [
          IconButton(onPressed: (){
          Get.to(ScreenOne());
          }, icon:Icon(Icons.arrow_back_ios)),
      ],) ,
    body:Center(
      child: Column(
        mainAxisAlignment:MainAxisAlignment.center ,
      children: [
        Padding(
          padding:  EdgeInsets.all(10.0),
          child: Text("You can press here many times .Every press increase your value +1",
            style:TextStyle(color:Colors.tealAccent,fontWeight:FontWeight.w600,fontSize:18  ) ,),
        ),
        Obx(()=> Text("Clicks:${controller.value.toString()}",
      style:TextStyle(color:Colors.blue,fontSize:22,fontWeight:FontWeight.w900   ) ,)),

      ],


      ),
    ) ,
    floatingActionButton: Draggable(
      feedback:FloatingActionButton(onPressed: (){},
        tooltip:"increment" ,
        child:Icon (Icons.add) ,) ,
      child: DraggableFab(//dragable fab package use for movable
        child: FloatingActionButton(
          onPressed:(){controller.incrementCount();},
          tooltip:"increment" ,
          child:Icon(Icons.add),
        ),
      ),),


    );
  }
}
class Counter extends GetxController {
  RxInt value=0.obs;
  incrementCount(){
    value++;
  }
}



