import 'package:ecomerceproject/ui/screens/complete_profile_screen.dart';
import 'package:ecomerceproject/ui/utils/app_colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import '../widgets/app_elevated_button.dart';
import '../widgets/app_textfilled_widgets.dart';

class verifyOtpScreen extends StatefulWidget {
   const verifyOtpScreen({Key? key}) : super(key: key);

   @override
   State<verifyOtpScreen> createState() => _verifyOtpScreenState();
 }

 class _verifyOtpScreenState extends State<verifyOtpScreen> {
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
                 const Text("Enter OTP Code",style:TextStyle(fontSize:32,fontWeight:FontWeight.w600,color:Colors.black54,   ) ,),
                 SizedBox(height: 8,),
                 const Text("A 4 digit OTP Code has been Sent your Email",style:TextStyle( fontSize:13,color:Color(0xFFa6a6a6),letterSpacing: 0.5,),),
                 SizedBox(height:16 ,),
                 PinCodeTextField(
                   length: 4,
                   obscureText: false,
                   animationType: AnimationType.fade,
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   pinTheme: PinTheme(
                     shape: PinCodeFieldShape.box,
                     borderRadius: BorderRadius.circular(8),
                     fieldHeight: 50,
                     fieldWidth: 40,
                     activeFillColor: Colors.white,
                     inactiveFillColor:Colors.white,
                     selectedFillColor:Colors.white ,
                     selectedColor:AppColors.primaryColor,

                   ),
                   animationDuration: const Duration(milliseconds: 300),
                   backgroundColor: Colors.transparent,
                   enableActiveFill: false,

                   onCompleted: (v) {
                   },
                   onChanged: (value) {
                   },

                   beforeTextPaste: (text) {
                           return true;

                   },
                     appContext:context,
                 ),

                 const SizedBox(height:16,),
                 AppElevatedButton(
                   onTap:(){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>CompleteProfileScreen()));
                   } ,
                   text:"Next" ,

                 ),
                  const SizedBox(
                   height:16 ,
                 ),
                 RichText(text: TextSpan(text:"This code will expire in",style: TextStyle(color:Colors.grey ),
                 children:[TextSpan(text:" 120 s" ,style:TextStyle(color:AppColors.primaryColor ,) )] )),
                 const SizedBox(
                   height:16 ,
                 ),
                 TextButton(onPressed: (){}, child:Text("Resend Code")),
               ],),
           ),   ) ,
       ),

     );
   }
 }

 