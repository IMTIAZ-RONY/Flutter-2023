
import 'package:ecomerceproject/ui/widgets/Home/category_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../get-x/bottom_navigation_controller.dart';
class ProductCategoryScreen extends StatefulWidget {
  const ProductCategoryScreen({Key? key}) : super(key: key);

  @override
  State<ProductCategoryScreen> createState() => _ProductCategoryScreenState();
}

class _ProductCategoryScreenState extends State<ProductCategoryScreen> {
  BottomNavigationController controller=Get.put(BottomNavigationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:AppBar(
        title:Text("Categories",
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
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemCount: 12,
        itemBuilder:(context,index){
          return SingleChildScrollView(
            scrollDirection:Axis.vertical ,
            child: CategoryItemWidget(
                categoryItemName: "ABC",
                icon:Icons.adb,
                onTap: (){}
            ),
          );
        }) ,


    );
  }
}

