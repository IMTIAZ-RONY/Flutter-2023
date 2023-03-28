import 'package:ecomerceproject/ui/screens/category_screen.dart';
import 'package:ecomerceproject/ui/screens/home_screen.dart';
import 'package:ecomerceproject/ui/screens/wish_list_screen.dart';
import 'package:ecomerceproject/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../get-x/bottom_navigation_controller.dart';
import 'carts_screen.dart';

class MainBottomNavigationBar extends StatefulWidget {

  const MainBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<MainBottomNavigationBar> createState() => _MainBottomNavigationBarState();
}

class _MainBottomNavigationBarState extends State<MainBottomNavigationBar> {
  BottomNavigationController controller=Get.put(BottomNavigationController());
  List<Widget>screens=const[
    HomeScreen(),
    ProductCategoryScreen(),
    CartsScreen(),
    WishListScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:GetBuilder<BottomNavigationController>(

        builder: (_) {
          return screens[controller.selectedIndex];
        }
      ) ,
      bottomNavigationBar:GetBuilder<BottomNavigationController>(

        builder: (_) {
          return BottomNavigationBar(
            currentIndex:controller .selectedIndex ,
            selectedItemColor:AppColors.primaryColor ,
              unselectedItemColor:Colors.grey ,
              showUnselectedLabels:true ,
              onTap: (index){
              controller.changeIndex(index);
              },

              items: [
            BottomNavigationBarItem(icon:Icon(Icons.home),label: "Home", ),
            BottomNavigationBarItem(icon:Icon(Icons.category),label: "Categories", ),
            BottomNavigationBarItem(icon:Icon(Icons.shopping_cart),label: "Cart", ),
            BottomNavigationBarItem(icon:Icon(Icons.card_giftcard),label: "Wish", ),
          ]);
        }
      ) ,

    );
  }
}
