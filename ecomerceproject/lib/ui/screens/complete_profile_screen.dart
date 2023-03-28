import 'package:ecomerceproject/ui/screens/main_bottom_navigation_bar_screen.dart';
import 'package:ecomerceproject/ui/widgets/app_textfilled_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



import '../widgets/app_elevated_button.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({Key? key}) : super(key: key);

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:Padding(
      padding: const EdgeInsets.all(16.0),
      child:SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height:46,),
              SvgPicture.asset("assets/images/crafty_bay_logo.svg",width: 120,fit:BoxFit.scaleDown ,),
              SizedBox(height:16 ,),
              const Text("Complete Profile",style:TextStyle(
                fontSize:32,
                fontWeight:FontWeight.w600,
                color:Colors.black54,   ) ,),
              SizedBox(height: 8,),
              const Text("Get started with us with your details",style:TextStyle(
                fontSize:13,
                color:Color(0xFFa6a6a6),
                letterSpacing: 0.5,),),
              const SizedBox(height:16 ,),
              AppTextFilledWidget(controller: TextEditingController(), hintText:"First Name"),
              const SizedBox(height:8 ,),
              AppTextFilledWidget(controller: TextEditingController(), hintText:"Last Name"),
              const SizedBox(height:8 ,),
              AppTextFilledWidget(controller: TextEditingController(), hintText:"Mobile"),
              const SizedBox(height:8 ,),
              AppTextFilledWidget(controller: TextEditingController(), hintText:"City"),
              const SizedBox(height:8 ,),
              AppTextFilledWidget(
                maxlines: 4,
                  controller: TextEditingController(), hintText:"Shipping Address"),

              const SizedBox(height:16,),
              AppElevatedButton(
                onTap:(){
                 Navigator.pushAndRemoveUntil(context,
                     MaterialPageRoute(builder:(context)=>MainBottomNavigationBar() ) ,
                         (route) => false);

                } ,
                text:"Complete" ,

              ),


            ],),
        ),
      ) ,
    ),);
  }
}
