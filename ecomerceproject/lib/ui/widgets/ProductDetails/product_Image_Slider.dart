import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../utils/app_colors.dart';
class ProductImageSlider extends StatelessWidget {
  ProductImageSlider({Key? key}) : super(key: key);
  final CarouselController _carouselController = CarouselController();
  final ValueNotifier<int> _currentSelectedIndex = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          carouselController: _carouselController,
          options: CarouselOptions(
            height: 230.0,
            viewportFraction: 1,
            onPageChanged: (index, _) {
              _currentSelectedIndex.value = index;
            },
          ),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color:Colors.grey ,
                      image:DecorationImage(
                          image:AssetImage("assets/images/nike_shoes.png"),
                      fit:BoxFit.cover )
                    ),
                    child: Center(
                        child: Text(
                          'text $i',
                          style: const TextStyle(fontSize: 16.0),
                        )));
              },
            );
          }).toList(),
        ),
        
        Positioned.fill(
          child: Align(
            alignment:Alignment.bottomCenter ,
            child: Column(
              mainAxisAlignment:MainAxisAlignment.end ,
              children: [
                ValueListenableBuilder(
                    valueListenable: _currentSelectedIndex,
                    builder: (context, updateValue, _) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int i = 0; i < 5; i++)
                            Container(
                              height: 15,
                              width: 15,
                              margin: EdgeInsets.all(03),
                              decoration: BoxDecoration(
                                  color: i == _currentSelectedIndex.value
                                      ? AppColors.primaryColor
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: i == _currentSelectedIndex.value
                                        ? AppColors.primaryColor
                                        : Colors.white,
                                  )),
                            )
                        ],
                      );
                    }),
                SizedBox(height: 8,),
              ],
            ),
          ),
        ),
      ],
    );
  }
}