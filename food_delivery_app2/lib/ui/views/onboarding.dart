import 'package:flutter/material.dart';
import 'package:food_delivery_app2/ui/views/auth/login.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:onboarding_intro_screen/onboarding_screen.dart';

import '../routes/route.dart';
class  OnBoarding extends StatelessWidget {
   OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: OnBoardingScreen(
        onSkip: () {
         // Navigator.push ( context,MaterialPageRoute(builder: (_)=>LoginScreen()));
          //Navigator.pushNamed (context, "/Login");
          Get.toNamed(login);
        },
        showPrevNextButton: true,
        showIndicator: true,
        backgourndColor: Colors.white,
        activeDotColor: Colors.blue,
        deactiveDotColor: Colors.grey,
        iconColor: Colors.black,
        leftIcon: Icons.arrow_circle_left_rounded,
        rightIcon: Icons.arrow_circle_right_rounded,
        iconSize: 30,
        pages: [
          items("assets/images/burger.jpg", "Ham Burger", "Delicious burger."),
          items("assets/images/chicken_biryani.jpg", "Chicken Biryani", "We made healthy chicken biryani for you. "),
          items("assets/images/dessert.jpg", "Faludha", "Faludha is best dessert."),
          items("assets/images/dish-biryani.jpg", "Biryani ", "Handi Mutton Birayani."),
          items("assets/images/pudding.jpg", "Pudding", "Come and take teast of lovely pudding."),

        ],
      ),
    );
  }
}

OnBoardingModel items(image,title,description){
  return  OnBoardingModel(
    image: Image.asset(image,fit:BoxFit.fill ,),
    title: title,titleColor:Colors.purple ,
    body: description,bodyColor:Colors.amber ,
  );
}