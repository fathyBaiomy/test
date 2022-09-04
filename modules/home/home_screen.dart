import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: Icon(
            Icons.menu,
        ),title:Text( 'First App By nono'),
        actions: [
            IconButton(onPressed: (){
              print ('smile يا جميل');
            }, icon:  Icon(
                Icons.notification_important
            ) ),
          Icon(
            Icons.search,
          ),


        ],

      ),
      body:SingleChildScrollView(child:Column(
        mainAxisSize: MainAxisSize.max,
       mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.start,

        children:[
          Container(
            padding: EdgeInsets.all(50.0),
       //     decoration: BoxDecoration(
            //  borderRadius: BorderRadius.circular(20.0),
        //    ),
        //    clipBehavior:Clip.antiAliasWithSaveLayer ,
            width:double.infinity,
            // height: 400.0,

              color: Colors.black87,

              child:

              Text(' yor best youtuber ',
                textAlign: TextAlign.center,
                style:TextStyle(
                  color:Colors.white60,
                  fontSize: 50.0,

                ),)),
      Stack(
alignment:Alignment.bottomCenter,
children:[

  Container(
            width:double.infinity,
     // height: 400.0,

           color: Colors.black87,

    child:

  Text('Nehal ELsamoly',
  textAlign: TextAlign.center,
  style:TextStyle(
    color:Colors.white60,
    fontSize: 50.0,

  ),))
           ,Image(
             image: NetworkImage('https://media-exp1.licdn.com/dms/image/C4D03AQEdAF1zqkMrXQ/profile-displayphoto-shrink_200_200/0/1651753083215?e=1660176000&v=beta&t=M7gpQVmWF2lXdZkLftDNMGFDXNpE2QEheC1arXcCD9A')
          , width:360.0,
             height: 300.0,
          // fit:BoxFit.fitHeight,
           //  fit:BoxFit.fitWidth,
           )]),


       /*       Container(
               width:100.0,
      height:100.0,
      color:Colors.black,
           child:


        Text('Hello يا جميل',
                style:TextStyle(color:Colors.red,
                fontSize: 30.0,
                backgroundColor: Colors.black,
                ),

               )
              ,),
              Text('انزل تحت شويه',
              style:TextStyle(
                fontSize: 60.0,
              ),),
      Text(' تحت كمان ياجميل',
        style:TextStyle(color:Colors.red,
          fontSize: 30.0,
          backgroundColor: Colors.black,
        ),

      )
      ,
    Text('معلش كمان تحت',
    style:TextStyle(
    fontSize: 60.0,
    ),),

          Text('معلش عشان خطري',
            style:TextStyle(color:Colors.red,
              fontSize: 30.0,
              backgroundColor: Colors.black,
            ),

          )
          ,
          Text('اصله شيئ مهم',
            style:TextStyle(
              fontSize: 60.0,
            ),),

          Text('حياة او موت بقولك',
            style:TextStyle(color:Colors.red,
              fontSize: 30.0,
              backgroundColor: Colors.black,
            ),

          )
          ,
          Text('عامل اي ',
            style:TextStyle(
              fontSize: 60.0,
            ),),
          Text('في حياتك',
            style:TextStyle(color:Colors.red,
              fontSize: 30.0,
              backgroundColor: Colors.black,
            ),

          )
          ,
          Text('يا حبيبي طمني عليك',
            style:TextStyle(
              fontSize: 60.0,
            ),),
          Text('انا ذكرياتك حب عمرك',
            style:TextStyle(
              fontSize: 60.0,
            ),),
          Text('واما بتضايق دلوقت بتلكم مين؟',
            style:TextStyle(
              fontSize: 60.0,
            ),),
          Text('انت زهقت مني؟',
            style:TextStyle(
              fontSize: 60.0,
            ),),
          Text('مش عاوز تتعرف عليا خالص؟',
            style:TextStyle(
              fontSize: 60.0,
            ),),
          Text('طب باي ياجميل ههههههه؟',
            style:TextStyle(
              fontSize: 60.0,
            ),),
        ],
      ),*/
    ]
    ))

    );
  }

}