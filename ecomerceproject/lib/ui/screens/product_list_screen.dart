

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../get-x/bottom_navigation_controller.dart';
import '../widgets/product_item_preview_card.dart';
class ProductListScreen extends StatefulWidget {
  const ProductListScreen({Key? key}) : super(key: key);

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  BottomNavigationController controller=Get.put(BottomNavigationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:AppBar(
        title:Text("All Product List",
          style: TextStyle(color: Colors.black54),
        ) ,
        backgroundColor:Colors.white ,
        elevation: 1,
        leading:IconButton(
          onPressed: (){
            controller.changeIndex(0);
          },
          icon:const Icon(Icons.arrow_back_ios,
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