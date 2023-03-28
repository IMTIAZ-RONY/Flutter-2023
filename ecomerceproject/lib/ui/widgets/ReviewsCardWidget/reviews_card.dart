import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(radius:15 ,backgroundColor:Colors.grey ,
                  child:Icon(Icons.person,color:Colors.black ,) ,),
                SizedBox(width:20,),
                Text("Rabbil Hassan",style:TextStyle(fontSize:18,fontWeight:FontWeight.bold,
                    color:Colors.black  ) ,)
              ],

            ),
            Row(
              children: [
                Expanded(
                    child: Text('''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.''')),
              ],
            ),
          ],

        ),
      ) ,


    );
  }
}