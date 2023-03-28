
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width:double.infinity ,
        child:ElevatedButton(
          style:ElevatedButton.styleFrom(
            backgroundColor:AppColors.primaryColor,
            padding:EdgeInsets.all(16) ,
            shape:RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(14) ) ,
          ),
          onPressed:onTap,
          child:Text(text),));
  }
}