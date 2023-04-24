import 'package:flutter/material.dart';
import 'package:getxpractices/science.dart';

import 'homePage.dart';
import 'package:get/get.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner:false ,
      title: 'Routing Practice',
      theme: ThemeData(

        primarySwatch: Colors.deepPurple,
      ),
     home:MyHomePage(),
     /* initialRoute: '/',
      getPages: [
        GetPage(name: "/", page:()=>MyHomePage(),transition:Transition.circularReveal,
            transitionDuration:Duration(seconds: 10) ,  ),
        GetPage(name: "/jadu", page:()=>Science(),transition:Transition.zoom,
          transitionDuration:Duration(seconds: 10) ,  ),
      ],*/
    );
  }
}


