

    import 'package:food_delivery_app2/ui/views/auth/login.dart';
import 'package:food_delivery_app2/ui/views/auth/sign_up.dart';
import 'package:food_delivery_app2/ui/views/onboarding.dart';
import 'package:food_delivery_app2/ui/views/splash.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

const String  splash="/Splash";
    const String  onBoarding="/onBoarding";
    const String  login="/Login";
    const String  signUp="/SignUp";

    List<GetPage>getPages=[
      GetPage(name: splash, page:()=>SplashScreen()),
      GetPage(name: onBoarding, page:()=>OnBoarding()),
      GetPage(name: login, page:()=>LoginScreen()),
      GetPage(name: signUp, page:()=>SignUpScreen()),

    ];