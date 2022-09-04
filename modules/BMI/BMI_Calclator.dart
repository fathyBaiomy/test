import 'dart:math';

import 'package:first/modules/BMIresult/BMIresultscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMICalcolator extends StatefulWidget {
  @override
  State<BMICalcolator> createState() => _BMICalcolatorState();
}

class _BMICalcolatorState extends State<BMICalcolator> {
 // const BMICalcolator({Key? key}) : super(key: key);
bool isMale=true;
double height=120.0;
int weight=40;
int age=20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title:  Text('BMICalculate'),
      ),
      body:
         Column(
           children: [
             Expanded(child:
             Container(
             width: double.infinity,
               color: Colors.white,
               child: Padding(
                 padding: const EdgeInsets.all(20.0),
                 child: Row(
mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Expanded(
                       child: GestureDetector(
                         onTap: (){
                           setState((){
isMale=true;
                          });
                         },
                         child: Container(
                           child: Padding(
                             padding: const EdgeInsets.all(5.0),
                             child: Container(
                               child:
                               Column(

                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [

Image(
    image: AssetImage('assets/assets/images/male.png'),
height: 90.0,
width:90.0),
                                   SizedBox(
                                     height:15.0,
                                   ),

                                   Text('Male',
                                   style:TextStyle(
                                     fontWeight: FontWeight.bold,
                                     fontSize: 25.0,
                                   )),
                                 ],
                               ),
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(30.0),
                                   color:isMale ?Colors.blue: Colors.grey,
                                 )

                             ),
                           ),
                         ),
                       ),
                     ),
                     SizedBox(width:30.0),
                     Expanded(
                       child: GestureDetector(
                         onTap: (){
                           setState(() {
                             isMale=false;
                           });
                         },
                         child: Container(
                           child: Padding(
                             padding: const EdgeInsets.all(5.0),
                             child: Container(
                                 child:
                                 Column(

                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [

                                   Image(image:AssetImage('assets/assets/images/Fe.svg.png'),
                                   height: 90.0,
                                   width: 90.0,),
                                     SizedBox(
                                       height:15.0,
                                     ),

                                     Text('FeMale',
                                         style:TextStyle(
                                           fontWeight: FontWeight.bold,
                                           fontSize: 25.0,
                                         )),
                                   ],
                                 ),
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(30.0),
                                     color:isMale ? Colors.grey : Colors.blue,
                                 )

                             ),
                           ),
                         ),
                       ),
                     ),

                   ],
                 ),
               ),
             ),),
             Expanded(child:
             Padding(
               padding: const EdgeInsets.symmetric(horizontal:10.0),
               child: Container(
                // width:  double.infinity,
               //  color: Colors.green,
                 child: Padding(
                   padding: const EdgeInsets.symmetric(
                       horizontal: 20.0),

                     child: Container(
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                           children: [

                             Text('HEIGHT',
                                 style:TextStyle(
                                   fontWeight: FontWeight.bold,
                                   fontSize: 25.0,
                                 )),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               crossAxisAlignment: CrossAxisAlignment.baseline,
                               textBaseline:TextBaseline.alphabetic,
                               children:[

                                 Text('${height.round()}',
                                     style:TextStyle(
                                       fontWeight: FontWeight.bold,
                                       fontSize: 100.0,
                                     )),
                                 Text('cm',
                                     style:TextStyle(
                                       fontWeight: FontWeight.bold,
                                       fontSize: 15.0,
                                     )),
                               ],),

                             Slider(value: height,
                                 max: 220,
                                 min:80,onChanged:(value){
                               setState(() {
                                 height=value;
                               });
                                   print(value.round());
                                 }
                             ),]


                       ),
                     ),
                   ),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(30.0),
                   color: Colors.grey,

                 ),

               ),
             )             ),
             Expanded(
               child:

               Padding(
                 padding: const EdgeInsets.all(20.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Expanded(
                       child: Container(
           //   width: double.infinity,
                       //  color: Colors.blue,


                           child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,

                               children: [
                               Text('weight',
                                   style:TextStyle(
                                     fontWeight: FontWeight.bold,
                                     fontSize: 30.0,
                                   )),
                               Text('$weight',
                                   style:TextStyle(
                                     fontWeight: FontWeight.bold,
                                     fontSize: 60.0,
                                   )),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
    children:[
  FloatingActionButton(onPressed: (){
    setState(() {
      weight--;
    });
  },heroTag:'weight--',mini:true,child:Icon(Icons.remove),),
  FloatingActionButton(onPressed: (){
    setState(() {
      weight++;
    });
  },heroTag: 'weight++',mini:true,child:Icon(Icons.add),),
])



                             ]
                           ),


                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(30.0),
                           color: Colors.grey
                         ),
                       ),
                     ),
                     SizedBox(width: 80.0,),
                     Expanded(
                       child: Container(
                         //   width: double.infinity,
                         //  color: Colors.blue,
                         child:
                         Column(
                             mainAxisAlignment: MainAxisAlignment.center,

                             children: [
                               Text('age',
                                   style:TextStyle(
                                     fontWeight: FontWeight.bold,
                                     fontSize: 30.0,
                                   )),
                               Text('$age',
                                   style:TextStyle(
                                     fontWeight: FontWeight.bold,
                                     fontSize: 60.0,
                                   )),
                               Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children:[
                                     FloatingActionButton(onPressed: (){
                                       setState(() {
                                         age--;
                                       });
                                     },heroTag: 'age--',mini:true,child:Icon(Icons.remove),),
                                     FloatingActionButton(onPressed: (){
                                       setState(() {
                                         age++;
                                       });
                                     },
                                         heroTag: 'age++'
                                     ,mini:true,child:Icon(Icons.add),),
                                   ])



                             ]
                         ),

                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(30.0),
                             color: Colors.grey
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
             ),
             Container(
               color: Colors.blue,
    width:double.infinity,
               child: MaterialButton(onPressed:(){
                 var result=weight/pow(height/100,2);
                 print(result.round());
                 Navigator.push(context,
                   MaterialPageRoute(builder:(context)=>BMIscreenresult(age:age,result: result.round()
                    , isMale:isMale,)),
                 );
               },
                 height: 60.0,
               child:Text('Calculate',
               style: TextStyle(
                 color: Colors.white,
                 fontSize: 50.0,
                 fontWeight: FontWeight.bold,
               ),),
               ),
             ),

           ],
         )
    );
  }
}


