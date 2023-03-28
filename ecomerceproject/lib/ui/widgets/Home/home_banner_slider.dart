import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../utils/app_colors.dart';


class HomeBannerSlider extends StatelessWidget {
  HomeBannerSlider({Key? key}) : super(key: key);
  final CarouselController _carouselController = CarouselController();
  final ValueNotifier<int> _currentSelectedIndex = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          carouselController: _carouselController,
          options: CarouselOptions(
            height: 180.0,
            autoPlay:true ,
            reverse:false ,
            autoPlayAnimationDuration:Duration(seconds:1 ) ,
            autoPlayInterval:Duration(seconds:1 ) ,
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
                    margin:const EdgeInsets.symmetric(horizontal: 2,) ,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(8),
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
        const SizedBox(height: 5,),
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
                              : null,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: i == _currentSelectedIndex.value
                                ? AppColors.primaryColor
                                : Colors.grey,
                          )),
                    )
                ],
              );
            }),
      ],
    );
  }
}