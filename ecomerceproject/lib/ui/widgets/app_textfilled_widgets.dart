


//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class AppTextFilledWidget extends StatelessWidget {
  const AppTextFilledWidget({
    Key? key,
    required this.controller,
    required this.hintText,
    this.maxlines,
  }) : super(key: key);
  final TextEditingController controller;
  final String hintText;
  final int? maxlines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller:controller ,
      maxLines: maxlines??1,
      decoration:InputDecoration(
        fillColor:Colors.white,
        filled:true,
        hintText:hintText,
        border:OutlineInputBorder(
            borderSide:BorderSide(color:AppColors.primaryColor,)
        ),
        enabledBorder:OutlineInputBorder(
          borderSide:BorderSide(color:AppColors.primaryColor,),
        ) ,
        focusedBorder:OutlineInputBorder(
          borderSide:BorderSide(color:AppColors.primaryColor,),
        ) ,
      ) ,
    );
  }
}
