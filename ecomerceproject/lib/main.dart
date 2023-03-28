
import 'package:ecomerceproject/ui/screens/email_auth_screen.dart';
import 'package:ecomerceproject/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const CraftyBayApp());
}
class CraftyBayApp extends StatelessWidget {
  const CraftyBayApp ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
    home:SplashScreen(),
    );
  }
}
