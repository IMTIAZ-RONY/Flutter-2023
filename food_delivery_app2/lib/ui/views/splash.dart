import 'package:flutter/material.dart';
import 'package:food_delivery_app2/const/app_string.dart';
import 'package:food_delivery_app2/ui/routes/route.dart';
import 'package:food_delivery_app2/ui/style/app_styles.dart';
import 'package:food_delivery_app2/ui/views/onboarding.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SplashScreen extends StatefulWidget {
    SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds:5, ),()=>Get.toNamed(onBoarding));
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center ,
        children: [
          Text (
            AppStrings.appName,style:AppStyle().fontSize(30,Colors.purple,FontWeight.w600) ,
          ),
          SizedBox(height:20),
          LinearProgressIndicator(backgroundColor:Colors.green,color:Colors.red,),

        ],
      ),) ,
    );
  }
}
