import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNav extends StatelessWidget {
  BottomNav({Key? key}) : super(key: key);
  RxInt _currentIndex=0.obs;
 final _pages=[
   Container(color:Colors.pink ,),
   Container(color:Colors.yellow ,),
   Container(color:Colors.green ,),
 ];

  @override
  Widget build(BuildContext context) {
    return Obx(() =>Scaffold(
      bottomNavigationBar:BottomNavigationBar(
          currentIndex:_currentIndex.value ,
          onTap: (index){
            _currentIndex.value=index;
          },
          items: [
            BottomNavigationBarItem(icon:Icon( Icons.home,),label:"Home" , ),
            BottomNavigationBarItem(icon:Icon( Icons.favorite,),label:"Favourite" , ),
            BottomNavigationBarItem(icon:Icon( Icons.shopping_basket,),label:"card" , ),

          ]) ,
      body:  _pages[_currentIndex.value] ,
    ) );
  }
}
