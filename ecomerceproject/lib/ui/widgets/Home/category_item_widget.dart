import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({
    Key? key,
    required this.categoryItemName,
    required this.icon,
    required this.onTap,
  }) : super(key: key);
  final String categoryItemName;
  final IconData icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){} ,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          children: [
            Container(
              padding:EdgeInsets.all(10) ,
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(8) ,
                color:AppColors.primaryColor.withOpacity(0.15),

              ) ,
              child:Icon(
                icon,size:40 ,
                color:AppColors.primaryColor ,) ,
            ),
            Text(
              categoryItemName,
              style:TextStyle(
                  fontWeight:FontWeight.w400 ,
                  fontSize:13 ,
                  color:AppColors.primaryColor,
                  letterSpacing: 0.6) ,)
          ],
        ),
      ),
    );
  }
}