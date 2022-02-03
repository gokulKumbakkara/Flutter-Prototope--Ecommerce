import 'package:flipkart_flutter_ui/src/ui/homePage.dart';
import 'package:flipkart_flutter_ui/src/splash/splash_screens.dart';
import 'package:flipkart_flutter_ui/src/Constant/Constant.dart';
import 'package:flutter/material.dart';
import 'package:flipkart_flutter_ui/src/ui/LoginScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E commerce',
      theme: ThemeData(
        primaryColor: Color(0xff2874F0),
      ),
      routes: <String,WidgetBuilder>{
        SPLASH_SCREEN: (BuildContext context)=> AnimatedSplashScreen(),
        HOME_SCREEN: (BuildContext context)=> HomePage(),
        LOGIN_SCREEN:(BuildContext context)=> LoginScreen()
      },
      home: AnimatedSplashScreen(),
    );
  }
}
