import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app2/ui/style/app_styles.dart';
import 'package:food_delivery_app2/ui/widgets/custom_Form_Field.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../routes/route.dart';
class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key}) : super(key: key);
      final  TextEditingController _emailcontroller=TextEditingController();
      final TextEditingController _passwordcontroller=TextEditingController();
      final  _formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(left:20,top:25,right: 20 ),
          child: SingleChildScrollView(

            child: Form(
              key:_formKey ,
              autovalidateMode:AutovalidateMode.always ,
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start ,
                children: [
                  Text("Login",style:AppStyle().fontSize(30,Colors.black,FontWeight.w700) ,),
                  customFormField(_emailcontroller,
                      TextInputType.emailAddress,
                      "e-mail",
                      context,
                      (val){
                    String pattern=r'^[\w-]+(\.[\w-]+)*@([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,7}$';
                   RegExp regExp= RegExp(pattern);
                    if(val.isEmpty){return"This field can't be empty ";}
                    else if(!regExp.hasMatch (val)){
                      return "Please enter an valid email address";
                    }
                      },
                    prefixIcon:Icon(Icons.email,size:20 ,) ,

                  ),
                  customFormField(_passwordcontroller,
                      TextInputType.text,
                      "password",
                     context,
                      (val){
                        int minLength=8;
                        int maxLength=20;
                        bool hasUppercase=false;
                        bool hasLowercase=false;
                        bool hasNumber=false;
                        bool hasSpecialCharacter=false;
                        if(val.isEmpty){
                          return"this field can't be empty";
                        }///Check empty
                        else if(val.length<minLength||val.length>maxLength){
                          return"password must be 8-20 digits";
                        }
                        else{
                          ///Check for uppercase letter
                        if(RegExp (r'[A-Z]').hasMatch(val)){
                          hasUppercase=true;
                        }
                        ///Check for lowercase letter
                        if(RegExp(r'[a-z]').hasMatch (val)){
                          hasLowercase=true;
                        }
                        ///Check for Numbers
                        if(RegExp(r'[0-9]').hasMatch (val)){
                          hasNumber=true;
                        }
                        ///Check for special characters
                        if(RegExp (r'[~!@#$%^&*(),:"?.{}<>|]').hasMatch (val)){
                          hasSpecialCharacter=true;
                        }
                        ///Check if all criteria are met
                        if(!hasUppercase||!hasLowercase||!hasNumber||!hasSpecialCharacter){
                          return "Password must contain at least one Uppercase letter,one Lowercase letter,one number and one special characters";
                        }
                        }
                        return null;
                      },
                      obscureText: true,
                    prefixIcon:Icon(Icons.lock,size: 20,),
                    suffixIcon:IconButton(onPressed: (){}, icon:Icon(Icons.visibility,size: 20,)) 
                  ),
                  SizedBox(height:20 ,),
                  Center(child: SizedBox(width:300,height:40,child: ElevatedButton(onPressed: (){
                    if(_formKey.currentState!.validate()){
                      print("Successfull");
                    } else {
                      Get.snackbar ("Error", "Some thing is wrong ",snackStyle:SnackStyle.FLOATING,
                        snackPosition:SnackPosition.BOTTOM ,borderRadius:20 ,backgroundColor:Colors.pink ,
                          borderColor:Colors.blue ,borderWidth:3,isDismissible:true,duration:Duration(seconds: 5) ,
                        dismissDirection: DismissDirection.horizontal,
                      );
                    }
                  },
                      child:Text("Login",style:AppStyle().fontSize(22,Colors.pink,FontWeight.w700) ,)))),
                  Divider(height:15 ,thickness:3 ,color:Colors.cyanAccent ,),
                  RichText(text:  TextSpan(children:[
                    TextSpan(text: "Do't have an account?",style:AppStyle().fontSize(16,Colors.black, FontWeight.w500) ),
                    TextSpan(text:"Sign-up",style:AppStyle().fontSize(16, Colors.blue, FontWeight.w500) ,recognizer:TapGestureRecognizer()..onTap=()=>Get.toNamed(signUp) , ),
                  ],))
                ],

              ),
            ),
          ),
        ),
      ),
    );
  }
}

