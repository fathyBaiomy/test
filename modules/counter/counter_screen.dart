
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  //const ({Key? key}) : super(key: key);
  int counter=1;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(

    appBar:
    AppBar(
    title: Text('Counter'),
    ),
  body:Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
    children: [
      TextButton(onPressed:(){
        setState(() {
          counter--;
          print(counter);
        });

      }, child: Text(
    'Minus',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 50.0,
        ),
    ),
      ),
    Text('$counter',
    style: TextStyle(
    fontWeight:FontWeight.bold,
      fontSize: 100.0,

    ),),
      TextButton(onPressed:(){
        setState(() {
          counter++;
          print (counter);
        });

      }, child: Text(
          'Plus',
        style:TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 50.0,
        ),
      ),),



    ],
    ),
  )


    );
  }
}
