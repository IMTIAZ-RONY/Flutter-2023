import 'package:flutter/material.dart';

import '../screens/product_details_screen.dart';
import '../utils/app_colors.dart';

class ProductItemPreviewCard extends StatelessWidget {
  const ProductItemPreviewCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder:(context)=> ProductDetailsScreen() ));
      },
      child: Card(
        elevation:5 ,
        shape:RoundedRectangleBorder(
          borderRadius:BorderRadius.circular(8),
        ) ,
        child:
        Column(
          children: [
            Container(
              padding:EdgeInsets.all(16) ,
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(8) ,
                color:AppColors.primaryColor.withOpacity(0.15),

              ) ,
              child: Image.asset("assets/images/nike_shoes.png",
                height:90,
                width:120,fit:BoxFit.cover ,
              ),
            ),
            const  SizedBox(height:6 ,),
            const Text("New Year Special Shoe 30",
              maxLines: 2,
              style:TextStyle(
                  fontSize:12,
                  fontWeight:FontWeight.w600,
                  color:Colors.black54 ,
                  letterSpacing:0.4,
                  overflow:TextOverflow.ellipsis ) ,
            ),
            const SizedBox(height:8 ,),
            Row(
              mainAxisAlignment:MainAxisAlignment.center ,
              children: [
                Text("\$800",style:TextStyle(
                  color:AppColors.primaryColor,
                  fontSize:12,
                  fontWeight:FontWeight.w600, ) ,),
                const SizedBox(width:14 ,),
                const Icon(Icons.star,
                  color:Colors.amberAccent ,
                  size: 14,),
                const Text("4.5",
                  style:  TextStyle(
                      fontSize:13,fontWeight:FontWeight.w400,
                      color:Colors.grey ) ,),
                SizedBox(width:14 ,),
                GestureDetector(
                  onTap: (){},
                  child:Container(
                    padding:const EdgeInsets.all(4),
                    decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(8) ,
                      color:AppColors.primaryColor,

                    ) ,
                    child:const Icon(
                      Icons.favorite_border,
                      size: 14,
                      color:Colors.white ,) ,

                  ) ,

                ),
              ],
            ),
            const SizedBox(height: 8,),
          ],

        ) ,

      ),
    );
  }
}