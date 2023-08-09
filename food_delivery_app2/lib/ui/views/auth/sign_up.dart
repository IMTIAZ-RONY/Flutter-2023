import 'package:flutter/material.dart';
import 'package:food_delivery_app2/ui/style/app_styles.dart';
import 'package:food_delivery_app2/ui/widgets/custom_Form_Field.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class  SignUpScreen extends StatelessWidget {
   SignUpScreen({Key? key}) : super(key: key);
 final TextEditingController _emailcontroller= TextEditingController();
 final TextEditingController _passwordcontroller= TextEditingController();
final TextEditingController _namecontroller=TextEditingController();
 final _formKey=GlobalKey<FormState>();
 bool _passwordVisible=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
         child: Padding(
           padding:  EdgeInsets.only(left:20,top:25,right:20,),
           child: SingleChildScrollView(
             child: Form(
               autovalidateMode:AutovalidateMode.always ,
               key: _formKey,
                child: Column(
                 crossAxisAlignment:CrossAxisAlignment.start ,
                children: [
                  Text ("Sign-Up",style:AppStyle().fontSize (30,Colors.tealAccent, FontWeight.w600) ,),
                  SizedBox(height:25 ,),
                 customFormField(_namecontroller,TextInputType.name,"write your name", context,
                     (val){
                   if(val.isEmpty){
                     return "This form field can't be empty";
                   }else{
                     return null;
                   }

                 },
                   prefixIcon:Icon (Icons.person,size: 20),
                 ),

                  SizedBox(height:25 ,),

               customFormField (_emailcontroller,TextInputType.emailAddress,"e-mail",context,
                       (val){

                 String pattern= r'^[\w-]+(\.[\w-]+)*@([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,7}$';
                 RegExp regExp=RegExp(pattern);
                 if(val.isEmpty){
                   return "This field can't be empty";
                 }else if(!regExp.hasMatch(val)){
                   return"Please enter an valid email address";
                 }
                 else{
                   return null;
                 }
               },
                 prefixIcon:Icon(Icons.email) ,

               ),
                  SizedBox(height:20 ,),

                   customFormField (_passwordcontroller,TextInputType.text,"password",context,
                         (val){
                  int minLength=8;
                  int maxLength=20;
                  bool hasUpperCase=false ;
                  bool hasLowerCase=false;
                  bool hasNumbers=false;
                  bool hasSpecialCharecters=false;

                   if(val.isEmpty){
                     return"This field can't be empty";
                   }else if(val.length<minLength||val.length>maxLength){
                     return "Password must be contain 8-20 digits";
                   }
                  else{
                     ///Check UpperCase letters
                   if(RegExp (r'[A-Z]').hasMatch (val)){
                     hasUpperCase=true;
                   }
                   ///Check LowerCase letters
                   if(RegExp(r'[a-z]').hasMatch (val)){
                     hasLowerCase=true;
                   }
                   ///Check Numbers
                   if(RegExp (r'[0-9]').hasMatch (val)){
                     hasNumbers=true;
                   }
                   ///Check SpecialCharecters
                   if(RegExp(r'[!@#$%^&*(),.<>~?":{}|]').hasMatch (val)){
                     hasSpecialCharecters=true;
                   }
                   ///Check if all criteria are met
                   if(!hasUpperCase||!hasLowerCase||!hasNumbers||!hasSpecialCharecters){
                     return "Please must contain at least One UpperCase Letter,One LowerCase Letter,One number and One SpecialCharecters.";
                   }
                   }
                   return null;

               },
                    prefixIcon:Icon (Icons.lock,size:20 ,) ,
                    obscureText:_passwordVisible ,
                    suffixIcon:IconButton(onPressed:  (){
                      _passwordVisible=!_passwordVisible;

                    }, icon:Icon(_passwordVisible?Icons.visibility:Icons.visibility_off),) ,
               ),

                  SizedBox(height:20 ,),
                  ElevatedButton(onPressed: (){
                    if(_formKey.currentState!.validate()){
                      print("succesful");
                    }else{
                      Get.snackbar("Error!", "Some thing is wrong",borderRadius:10,
                        backgroundColor:Colors.pink,snackStyle:SnackStyle.FLOATING,
                        snackPosition:SnackPosition.BOTTOM, duration:Duration(seconds:5, ) ,

                      );
                    }
                  }, child:Text("SignUp",style:AppStyle().fontSize(22, Colors.tealAccent, FontWeight.w600) ,)),
                         ],),
             ),
           ),
         ),
      ),
    );
  }
}

