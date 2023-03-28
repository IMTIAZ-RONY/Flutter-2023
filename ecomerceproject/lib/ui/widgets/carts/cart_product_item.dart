import 'package:flutter/material.dart';

import '../../screens/carts_screen.dart';
import '../../utils/app_colors.dart';
import '../inc_dec_form_filed.dart';

class CartProductItem extends StatelessWidget {
  const CartProductItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin:const EdgeInsets.symmetric(horizontal:8,vertical:6 , ) ,
      elevation: 2,
      child: Row(
        children: [
          SizedBox(width: 8,),
          Container(
            padding:EdgeInsets.all(10) ,
            decoration:BoxDecoration(
              color:AppColors.primaryColor.withOpacity(0.15),
              borderRadius:BorderRadius.circular(4),
            ) ,
            child:
            Image.asset( "assets/images/nike_shoes.png",width:70 ,height:60 ,
              fit:BoxFit.cover ,),
          ),
          Expanded(

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment:CrossAxisAlignment.start ,
                        children: [
                          const Text("Product Name",style:TextStyle(color:Colors.black,
                            fontSize:15,
                            fontWeight:FontWeight.w600,
                            letterSpacing:0.4, ) ,),
                          Row(
                            children: [
                              Text("Color : Blue ",style:TextStyle(color:Colors.grey,
                                fontSize:13,
                                fontWeight:FontWeight.w400,
                                letterSpacing:0.4, ) ,),
                              const SizedBox(width:8),
                              Text("Size : M",style:TextStyle(color:Colors.grey,
                                fontSize:13,
                                fontWeight:FontWeight.w400,
                                letterSpacing:0.4, ) ,),


                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      IconButton(onPressed: (){}, icon:Icon(Icons.delete_forever,color:Colors.red ,size: 25,),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                    children: [
                      Text("\$100",
                        style:TextStyle(color:AppColors.primaryColor, )
                        ,),
                      const Spacer(),
                      const SizedBox(
                        width: 95,
                        height: 30,
                        child:IncDecFormField(


                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),


        ],
      ) ,
    );
  }
}