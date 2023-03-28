import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/app_colors.dart';
import 'main_bottom_navigation_bar_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds:2, )).then((value){
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder:(context)=>MainBottomNavigationBar()) ,
              (route) => false);
    });

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
      Center(
        child: Column(
          children: [
            const Spacer(),
            SvgPicture.asset("assets/images/crafty_bay_logo.svg",width: 120,fit:BoxFit.scaleDown ,),
            const Spacer(),
            SizedBox(height:16 ,),
            CircularProgressIndicator(
              color:AppColors.primaryColor),
            SizedBox(height:32,),
            Text("Verson 1.0.0",style:TextStyle(color:Colors.grey,
                fontWeight:FontWeight.w400,
              letterSpacing:0.6,
            ) ,),
          ],
        ),
      ) ,
    );
  }
}
