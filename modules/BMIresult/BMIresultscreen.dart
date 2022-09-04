import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMIscreenresult extends StatelessWidget {
 // const BMIscreenresult({Key? key, required this.result, required this.age, required this.isMale}) : super(key: key);
final int result;
final int age;
final bool isMale;
  BMIscreenresult({
   @ required this.result, @required this.age, @required this.isMale ,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI RESULT'),
        leading:
        IconButton(
          onPressed:(){
            Navigator.pop(context);
          },
          icon: Icon(
            CupertinoIcons.left_chevron
          ),
        ),
      ),
      body: Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Gender: ${isMale?'Male' :'Female'}',style: TextStyle(
              fontWeight:FontWeight.bold,
              fontSize: 40.0,
            ),),
            Text('Result: $result',style: TextStyle(
              fontWeight:FontWeight.bold,
              fontSize: 40.0,
            ),),
            Text('Age  : $age',style: TextStyle(
              fontWeight:FontWeight.bold,
              fontSize: 40.0,
            ),),

          ],
        ),
      ),
    );
  }
}
