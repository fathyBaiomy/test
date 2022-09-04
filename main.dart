import 'package:flutter/material.dart';

//import 'modules/BMI/BMI_Calclator.dart';
//import 'modules/home/home_screen.dart';
import 'modules/login/login_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // debugShowCheckedModeBanner:false,
      home:LoginScreen(),


    );

  }
}







