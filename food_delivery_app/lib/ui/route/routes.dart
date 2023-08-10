

 import 'package:food_delivery_app/ui/views/auth/bottom_navigation_controller.dart';
import 'package:food_delivery_app/ui/views/auth/sign_up.dart';
import 'package:food_delivery_app/ui/views/home.dart';
import 'package:food_delivery_app/ui/views/onboarding.dart';
import 'package:food_delivery_app/ui/views/splash_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../views/auth/login.dart';

const  String splash ="/splash";
 const  String onboarding ="/onboarding";
 const  String login ="/login";
 const String signUp="/signUp";
 const String bottomNav="/bottomNav";
 List<GetPage>getPages=[
  GetPage(name: splash, page:()=> SplashScreen()),
  GetPage(name:  onboarding, page: ()=>OnBoarding()),
  GetPage(name:  login, page: ()=>Login()),
  GetPage(name:  signUp, page: ()=>SignUp()),
  GetPage(name:  bottomNav, page: () => BottomNav()),
 ];