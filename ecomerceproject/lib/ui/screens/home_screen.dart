import 'package:ecomerceproject/ui/screens/product_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/Home/category_item_widget.dart';
import '../widgets/Home/home_banner_slider.dart';
import '../widgets/Home/section_header.dart';
import '../widgets/product_item_preview_card.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: SvgPicture.asset(
            "assets/images/logo_nav.svg",
          ),
          actions: [
            const SizedBox(width: 6),
            CircleAvatar(
              backgroundColor: Colors.grey.shade200,
              radius: 16,
              child: Icon(
                Icons.person,
                size: 18,
                color: Colors.grey.shade700,
              ),
            ),
            const SizedBox(width: 6),
            CircleAvatar(
              backgroundColor: Colors.grey.shade200,
              radius: 16,
              child: Icon(
                Icons.call,
                size: 18,
                color: Colors.grey.shade700,
              ),
            ),
            const SizedBox(width: 6),
            GestureDetector(
              onTap: (){},
              child: CircleAvatar(
                backgroundColor: Colors.grey.shade200,
                radius: 16,
                child: Icon(
                  Icons.notifications,
                  size: 18,
                  color: Colors.grey.shade700,
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),

          child: SingleChildScrollView(
            child: Column(
              children: [
                const TextField(
                  decoration: InputDecoration(
                    hintText: "search",
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                   ),
                ),
                const SizedBox(
                  height: 16,
                ),
              HomeBannerSlider(),
               const SizedBox(height: 4,),
                SectionHeader(
                  headerName:"Categories" ,
                   onTapSeeAll: (){},
                ),

                SizedBox(height:2 ,),

                SingleChildScrollView(
                  scrollDirection:Axis.horizontal ,
                  child: Row(
                    children: [
                      CategoryItemWidget(
                        onTap: (){},
                        icon:Icons.monitor ,
                        categoryItemName: 'Elctronics',

                      ),
                      CategoryItemWidget(
                        onTap: (){},
                        icon:Icons.apple_outlined ,
                        categoryItemName: 'Food',

                      ),
                      CategoryItemWidget(
                        onTap: (){},
                        icon:Icons.diamond_outlined ,
                        categoryItemName: 'Fashion',

                      ),
                      CategoryItemWidget(
                        onTap: (){},
                        icon:Icons.bed ,
                        categoryItemName: 'Furniture',

                      ),
                      CategoryItemWidget(
                        onTap: (){},
                        icon:Icons.monitor ,
                        categoryItemName: 'Elctronics',

                      ),
                      CategoryItemWidget(
                        onTap: (){},
                        icon:Icons.apple_outlined ,
                        categoryItemName: 'Food',

                      ),
                      CategoryItemWidget(
                        onTap: (){},
                        icon:Icons.diamond_outlined ,
                        categoryItemName: 'Fashion',

                      ),
                      CategoryItemWidget(
                        onTap: (){},
                        icon:Icons.bed ,
                        categoryItemName: 'Furniture',

                      ),

                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SectionHeader(
                  headerName:"Popular" ,
                  onTapSeeAll: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>ProductListScreen()));
                  },
                ),
                SingleChildScrollView(
                  scrollDirection:Axis.horizontal ,
                  child: Row(
                    children: const [
                      ProductItemPreviewCard(),
                      ProductItemPreviewCard(),
                      ProductItemPreviewCard(),
                      ProductItemPreviewCard(),
                      ProductItemPreviewCard(),
                      ProductItemPreviewCard(),
                      ProductItemPreviewCard(),
                      ProductItemPreviewCard(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SectionHeader(
                  headerName:"Special" ,
                  onTapSeeAll: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder:(context)=>ProductListScreen() ));
                  },
                ),
                SingleChildScrollView(
                  scrollDirection:Axis.horizontal ,
                  child: Row(
                    children: const [
                      ProductItemPreviewCard(),
                      ProductItemPreviewCard(),
                      ProductItemPreviewCard(),
                      ProductItemPreviewCard(),
                      ProductItemPreviewCard(),
                      ProductItemPreviewCard(),
                      ProductItemPreviewCard(),
                      ProductItemPreviewCard(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SectionHeader(
                  headerName:"New" ,
                  onTapSeeAll: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>ProductListScreen() ));
                  },
                ),
                SingleChildScrollView(
                  scrollDirection:Axis.horizontal ,
                  child: Row(
                    children: const [
                      ProductItemPreviewCard(),
                      ProductItemPreviewCard(),
                      ProductItemPreviewCard(),
                      ProductItemPreviewCard(),
                      ProductItemPreviewCard(),
                      ProductItemPreviewCard(),
                      ProductItemPreviewCard(),
                      ProductItemPreviewCard(),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),

      ),
    );
  }
}







