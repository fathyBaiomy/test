import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//حطتلهم قيم ابتدائيه للاثر استخدامل للزرار
//عشان لو هوه مدخلهم هيكونوا اوردي موجودي ولو هوه عاوز يغير برحته
Widget defaultButton({ double width=double.infinity,
 bool isUpperCase=true  ,Color background=Colors.blue,
@required Function function,
   @required String text,
double redious=0.0,})=> Container(
width:width,
child: MaterialButton(
onPressed:function(),
child: Text(
   isUpperCase? text.toUpperCase():text
,style: TextStyle(
color:Colors.white,
fontWeight: FontWeight.bold,
fontSize: 40.0)
  ,
)),
decoration: BoxDecoration(
   borderRadius: BorderRadius.circular(redious),
  color: background,

),
);

