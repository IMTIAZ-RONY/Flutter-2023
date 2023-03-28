import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../get-x/bottom_navigation_controller.dart';
import '../widgets/product_item_preview_card.dart';
class WishListScreen extends StatefulWidget {
  const WishListScreen({Key? key}) : super(key: key);

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  BottomNavigationController controller=Get.put(BottomNavigationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:AppBar(
        title:Text("Wish List",
          style: TextStyle(color: Colors.black54),
        ) ,
        backgroundColor:Colors.white ,
        elevation: 1,
        leading:IconButton(
          onPressed: (){
            controller.changeIndex(0);
          },
          icon:Icon(Icons.arrow_back_ios,
            color:Colors.black54 ,),
        ),
      ) ,

      body:GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio:3/4,),
          itemCount: 12,
          itemBuilder:(context,index){
            return SingleChildScrollView(
              scrollDirection:Axis.horizontal ,

              child: const ProductItemPreviewCard( ),
            );
          }
          ) ,


    );
  }
}
