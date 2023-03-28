
import 'package:ecomerceproject/ui/screens/verify_otp_screen.dart';
import 'package:ecomerceproject/ui/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/app_elevated_button.dart';
import '../widgets/app_textfilled_widgets.dart';

class EmailAuthScreen extends StatefulWidget {
  const EmailAuthScreen({Key? key}) : super(key: key);

  @override
  State<EmailAuthScreen> createState() => _EmailAuthScreenState();
}

class _EmailAuthScreenState extends State<EmailAuthScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child:SafeArea(
          child: SingleChildScrollView(
          child: Column(
            children: [
               const SizedBox(height:46,),
              SvgPicture.asset("assets/images/crafty_bay_logo.svg",width: 120,fit:BoxFit.scaleDown ,),
              SizedBox(height:16 ,),
              const Text("Welcome Back",style:TextStyle(fontSize:32,fontWeight:FontWeight.w600,color:Colors.black54,   ) ,),
              SizedBox(height: 8,),
              const Text("Please Enter Your Email Address",style:TextStyle( fontSize:16,color:Color(0xFFa6a6a6),letterSpacing: 0.5,),),
              SizedBox(height:16 ,),
              AppTextFilledWidget(
                controller:TextEditingController() ,
                hintText:"Email" ,
              ),
              const SizedBox(height:16,),
              AppElevatedButton(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>verifyOtpScreen()));
                } ,
                text:"Next" ,

              ),
            ],),
        ),   ) ,
      ),
    );
  }
}



