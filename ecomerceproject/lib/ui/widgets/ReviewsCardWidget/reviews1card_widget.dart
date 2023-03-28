
import 'package:flutter/material.dart';

class reviews1_widget extends StatelessWidget {
  reviews1_widget({
    Key? key, required this.text, required this.child,
  }) : super(key: key);
  final String text;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 120,
          child: child,
        ),
      ],
    );
  }
}
