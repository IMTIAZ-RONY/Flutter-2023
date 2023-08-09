import 'package:flutter/material.dart';
import 'package:food_delivery_app2/ui/routes/route.dart';
import 'package:food_delivery_app2/ui/views/auth/login.dart';
import 'package:food_delivery_app2/ui/views/auth/sign_up.dart';
import 'package:food_delivery_app2/ui/views/onboarding.dart';
import 'package:food_delivery_app2/ui/views/splash.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        //primarySwatch: Colors.blue,
        colorScheme:ColorScheme.fromSeed(seedColor:Colors.yellowAccent),
        useMaterial3:true,
      ),

      home:SplashScreen() ,
      initialRoute:splash,
      getPages:getPages,
     );
  }
}

