import 'package:ecomerceproject/ui/utils/app_colors.dart';
import 'package:ecomerceproject/ui/widgets/app_elevated_button.dart';

import 'package:flutter/material.dart';

import '../get-x/bottom_navigation_controller.dart';
import 'package:get/get.dart';

import '../widgets/carts/cart_product_item.dart';
class CartsScreen extends StatefulWidget {
   const CartsScreen({Key? key}) : super(key: key);

   @override
   State<CartsScreen> createState() => _CartsScreenState();
 }

 class _CartsScreenState extends State<CartsScreen> {
   BottomNavigationController controller=Get.put(BottomNavigationController());
  // final TextEditingController productCountController=TextEditingController();
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar:AppBar(
         backgroundColor:Colors.white ,
         elevation:1 ,
         title:const Text('Cart',style:TextStyle(color:Colors.black54 ) ,) ,
         leading:IconButton(
             onPressed: (){
               controller.changeIndex(0);
             },
             icon:const Icon(
               Icons.arrow_back_ios,
               color: Colors.black54,),
         ),

       ) ,
       body:Column(
         children: [
           Expanded(
             child: ListView.builder(
                 itemCount: 15,
                 itemBuilder: (context,index){
               return const CartProductItem();
             }),
           ),
           Container(
             margin:EdgeInsets.all(8) ,
             decoration:BoxDecoration(
               color:AppColors.primaryColor.withOpacity(0.18),
               borderRadius:BorderRadius.only(
                 topLeft:Radius.circular(10),
               topRight:Radius.circular(10), ) ,
             ) ,
             child: Row(

               mainAxisAlignment: MainAxisAlignment.spaceBetween,

               children: [

                 Column(
                   crossAxisAlignment:CrossAxisAlignment.start ,
                   children: [
                     Text(
                       "Total Price",style:TextStyle(color: Colors.black54,fontSize: 12) ,
                     ),
                     Text(
                       "\$ 12000",style:TextStyle(color:AppColors.primaryColor,
                       fontSize: 15,
                       fontWeight:FontWeight.w600,  ) ,
                     )
                   ],
                 ),

                 SizedBox(
                   width: 100,

                     child: AppElevatedButton(text: "Check Out", onTap:(){})),
               ],
             ),
           ),
         ],
       ) ,

     );
   }
 }




