import 'package:ecomerceproject/ui/screens/review_screen.dart';
import 'package:ecomerceproject/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../widgets/app_textfilled_widgets.dart';

class CreateReview extends StatefulWidget {
  const CreateReview({Key? key}) : super(key: key);

  @override
  State<CreateReview> createState() => _CreateReviewState();
}

class _CreateReviewState extends State<CreateReview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Create Review",style:TextStyle(color:Colors.black,fontSize:16  ) ,),
        elevation: 2,
        leading:IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (Context)=>ReviewScreen()));
        }, icon:Icon(Icons.arrow_back_ios) ,) ,
      ) ,
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 16,),
              AppTextFilledWidget(
                controller:TextEditingController() ,
                hintText:"First Name" ,
              ),
              SizedBox(height: 16,),
              AppTextFilledWidget(
                controller:TextEditingController() ,
                hintText:"Last Name" ,
              ),
              SizedBox(height: 16,),
              AppTextFilledWidget(
                controller:TextEditingController() ,
                hintText:"Write Review" ,
                maxlines:10 ,
              ),
              SizedBox(height: 16,),
              SizedBox(
                width:double.infinity ,
                child: ElevatedButton(
                style:ElevatedButton.styleFrom(backgroundColor:AppColors.primaryColor ,
                  padding:const EdgeInsets.all(14) ,
                  shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(8),
                  ) ,
                )
                ,onPressed: (){}, child:Text("Submit",style:TextStyle(color:Colors.white,fontSize: 16, ) ,)),
               )
            ],
          ),
        ),
      ) ,
    );
  }
}
