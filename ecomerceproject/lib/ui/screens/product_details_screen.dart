import 'package:ecomerceproject/ui/screens/review_screen.dart';
import 'package:ecomerceproject/ui/utils/app_colors.dart';
import 'package:ecomerceproject/ui/widgets/inc_dec_form_filed.dart';
import 'package:flutter/material.dart';

import '../widgets/ProductDetails/product_Image_Slider.dart';
import '../widgets/app_elevated_button.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor:Colors.white ,
        leading:const BackButton(
          color:Colors.black54 ,
        ) ,
        title: const Text("ProductDetails",style:TextStyle(color:Colors.black54) ) ,
        elevation: 0,
      ) ,
      body:Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ProductImageSlider(),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:6 ),
                    child: Column(
                      crossAxisAlignment:CrossAxisAlignment.start ,
                      children: [
                        Row(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                          children: [
                            Expanded(

                              child: Text("Happy New Year Special Deal Save 30% ", maxLines:2 ,

                                style:TextStyle(color:Colors.black54,fontSize:18,
                                  fontWeight:FontWeight.w900 ,
                                ) ,
                              ),
                            ),
                            SizedBox(
                              width:90 ,
                              child:IncDecFormField() ,
                            ),

                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.star,color:Colors.amber ,size:32 ,),
                            Text("4.8",style:TextStyle(color:Colors.black,fontSize:20,  )
                              ,),
                            SizedBox(width:8 ),
                            TextButton(
                              onPressed: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context)=>ReviewScreen()));
                              },
                                child:Text("Reviews",
                                  style:TextStyle(color:AppColors.primaryColor,
                                    fontSize:18 , ),
                                  ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              decoration:BoxDecoration(
                                color:AppColors.primaryColor,
                                borderRadius:BorderRadius.circular(4) ,
                              ) ,
                              child:Icon(Icons.favorite_border,
                              color:Colors.white ,
                              size: 16,) ,
                            ),

                          ],
                        ),
                       const SizedBox(height:10 ,),
                       const Text("Color",
                          style:TextStyle(
                            color:Colors.black54,
                            fontWeight:FontWeight.w900 ,
                            fontSize: 16,
                        ),
                       ),
                        const SizedBox(height:7 ,),
                        SingleChildScrollView(
                       scrollDirection:Axis.horizontal ,
                          child: Row(
                            children: [
                              for(int i=0;i<5;i++)
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: CircleAvatar(
                                  radius:13 ,
                                  backgroundColor:AppColors.primaryColor ,
                                  child:const Icon(Icons.check,color:Colors.white ,) ,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height:10 ,),
                        const Text("Size",
                          style:TextStyle(
                            color:Colors.black54,
                            fontWeight:FontWeight.w900 ,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height:7 ,),
                        SingleChildScrollView(
                          scrollDirection:Axis.horizontal ,
                          child: Row(
                            children: [
                              for(int i=0;i<5;i++)
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(
                                    decoration:BoxDecoration(
                                      border:Border.all(color:Colors.black54,width:2,  ) ,
                                      borderRadius:BorderRadius.circular(50) ,
                                    ) ,
                                    child:Text("XL",style:TextStyle(fontSize:18, ) ,) ,

                                  ),
                                ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 7,),
                        const Text("Description",
                          style:TextStyle(
                            color:Colors.black54,
                            fontWeight:FontWeight.w900 ,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height:7 ,),
                        const Text('''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur cursus posuere condimentum.Sed ut ex ac nulla fring In hac habitasse platea dictumst. Vivamus cursus ex odiet ultrices nisi feugiat nec. Nulla sed suscipit eu pretium metus. Suspendisse potenti. Donec hendrerit sollicitudin sem,eget interdum diam dignissim a. Donec non enim in nisi vestibulum elemen Pellentesque bibendum non neque a tempor. Vivamus vel mi ligula.Integer ut turpis vel sapien hendrerit ultricies et sit amet purus. ''',
                        style:TextStyle(color:Colors.black54,
                            fontSize:13,
                            letterSpacing: 0.2  ) ,),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
          Container(
            padding:EdgeInsets.symmetric(horizontal: 16,vertical: 8) ,
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
                      "Price",style:TextStyle(color: Colors.black54,fontSize: 12) ,
                    ),
                    Text(
                      "\$ 1000",style:TextStyle(color:AppColors.primaryColor,
                      fontSize: 15,
                      fontWeight:FontWeight.w600,  ) ,
                    )
                  ],
                ),

                SizedBox(
                    width: 120,

                    child: AppElevatedButton(text: "Add To Cart", onTap:(){})),
              ],
            ),
          ),
        ],
      ) ,
    );
  }
}
