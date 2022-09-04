

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../shared/components/components.dart';
class LoginScreen extends StatelessWidget {
  //const LoginScreen({Key? key}) : super(key: key);
var emailcontroller=TextEditingController();
var passcontroller=TextEditingController();
 var formkey=GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar() ,
        body:
            Form(
              key:formkey,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Text(
                        'NONO ',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),

                      ) ,
                      SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        controller:emailcontroller ,
                        keyboardType: TextInputType.emailAddress,
                        onFieldSubmitted: (value){
                          print(value);
                        },
                          onChanged: (String value){
                          print (value);
                          }
                        ,
                        validator:(value){
                          if(value!=null){
                          if(value.isEmpty){
                            return 'you must enter your mail';
                          }
                          return null;

                        }},
                        decoration: InputDecoration(

                          labelText: 'Email Address',
                          border:OutlineInputBorder(),
                                prefixIcon:Icon(Icons.email),

                        ),

                      ),
          SizedBox(
          height: 20.0,
        ),
        TextFormField(
          controller: passcontroller,
          obscureText:true ,
                keyboardType: TextInputType.visiblePassword,
                onFieldSubmitted: (value){
                  print(value);
                },
          validator:(value){
            if(value!=null){
                if(value.isEmpty){
                return 'you must enter your pass';

                }
return null;
          }},
                decoration: InputDecoration(

                  labelText: 'password',
                  border:OutlineInputBorder(),
                        suffixIcon:Icon(Icons.remove_red_eye),
                  prefixIcon:Icon(Icons.lock)

                ),)
                     ,
                      SizedBox(
                        height: 20.0,
                      )
                     , defaultButton(text: 'login',
                        function:(){
if(formkey.currentState.validate()) {
 // print(emailcontroller.text);
  print(formkey.currentState.validate());
  //print(passcontroller.text);
}
                        },
                        redious: 30.0,
                        background: Colors.blue,
                        width:double.infinity,
                      ),

                      SizedBox(
                        height: 20.0,
                      ),
                Row(
mainAxisAlignment: MainAxisAlignment.center,
        children: [

        Text(
        'Don\'t forget your account??'
        ),
          SizedBox(
                width: 20.0,
          ),
      TextButton(onPressed: (){}, child: Text(
          'Register now'),),

      ],

    )
                      ]),
              ),
            )



    );

  }
}
/*Container(
width:double.infinity,
color: Colors.blue,
child: MaterialButton(
onPressed: (){
print(emailcontroller.text);
print(passcontroller.text);

},
child: Text(
'LOGIN'
,style: TextStyle(
color:Colors.white),
)),
),

                                SizedBox(
                                  height: 20.0,
                                ),
                              Text('Nehal Elsamoly',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2
                                ,),


                          ],
                        ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children:[
                              CircleAvatar(
                                radius: 30.0,
                                backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1544385761302253570/___DBwMB_400x400.jpg'),
                              ),
                              CircleAvatar(
                                radius: 10.0,
                                backgroundColor: Colors.white,),

                              CircleAvatar(
                                radius: 30.0,
                                backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1544385761302253570/___DBwMB_400x400.jpg'),
                              ),
                              CircleAvatar(
                                radius: 7.0,
                                backgroundColor: Colors.green,                      ),


                            ] ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text('Nehal Elsamoly',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2
                          ,),


                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children:[
                              CircleAvatar(
                                radius: 30.0,
                                backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1544385761302253570/___DBwMB_400x400.jpg'),
                              ),
                              CircleAvatar(
                                radius: 10.0,
                                backgroundColor: Colors.white,),

                              CircleAvatar(
                                radius: 30.0,
                                backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1544385761302253570/___DBwMB_400x400.jpg'),
                              ),
                              CircleAvatar(
                                radius: 7.0,
                                backgroundColor: Colors.green,                      ),


                            ] ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text('Nehal Elsamoly',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2
                          ,),


                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children:[
                              CircleAvatar(
                                radius: 30.0,
                                backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1544385761302253570/___DBwMB_400x400.jpg'),
                              ),
                              CircleAvatar(
                                radius: 10.0,
                                backgroundColor: Colors.white,),

                              CircleAvatar(
                                radius: 30.0,
                                backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1544385761302253570/___DBwMB_400x400.jpg'),
                              ),
                              CircleAvatar(
                                radius: 7.0,
                                backgroundColor: Colors.green,                      ),


                            ] ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text('Nehal Elsamoly',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2
                          ,),


                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children:[
                              CircleAvatar(
                                radius: 30.0,
                                backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1544385761302253570/___DBwMB_400x400.jpg'),
                              ),
                              CircleAvatar(
                                radius: 10.0,
                                backgroundColor: Colors.white,),

                              CircleAvatar(
                                radius: 30.0,
                                backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1544385761302253570/___DBwMB_400x400.jpg'),
                              ),
                              CircleAvatar(
                                radius: 7.0,
                                backgroundColor: Colors.green,                      ),


                            ] ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text('Nehal Elsamoly',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2
                          ,),


                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children:[
                              CircleAvatar(
                                radius: 30.0,
                                backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1544385761302253570/___DBwMB_400x400.jpg'),
                              ),
                              CircleAvatar(
                                radius: 10.0,
                                backgroundColor: Colors.white,),

                              CircleAvatar(
                                radius: 30.0,
                                backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1544385761302253570/___DBwMB_400x400.jpg'),
                              ),
                              CircleAvatar(
                                radius: 7.0,
                                backgroundColor: Colors.green,                      ),


                            ] ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text('Nehal Elsamoly',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2
                          ,),


                      ],
                    ),
                  ),


                ],
            )  )

 */          /*  Expanded(child:
SingleChildScrollView(
scrollDirection: Axis.vertical,
child:
Column(
children:[
Row(
children: [
Stack(
alignment: AlignmentDirectional.bottomEnd,
children:[
CircleAvatar(
radius: 30.0,
backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1544385761302253570/___DBwMB_400x400.jpg'),
),
CircleAvatar(
radius: 10.0,
backgroundColor: Colors.white,),

CircleAvatar(
radius: 30.0,
backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1544385761302253570/___DBwMB_400x400.jpg'),
),
CircleAvatar(
radius: 7.0,
backgroundColor: Colors.green,                      ),


] ),
SizedBox(
width:25.0,
),
Expanded(
child:
Column(
crossAxisAlignment: CrossAxisAlignment.start,
children:[
Text('Nehal Elsamoly',
maxLines: 1,
overflow: TextOverflow.ellipsis,
style: TextStyle
(
fontWeight: FontWeight.bold,
),),
SizedBox(
height: 5.0,
),



Row(
children: [
Text('hello nehal'),

Padding(
padding: const EdgeInsets.symmetric(horizontal: 5.0),

child:  Container(
width: 7.0,
height: 7.0  ,
decoration: BoxDecoration(
color: Colors.lightBlue,
shape: BoxShape.circle,
),
)
,


),
Text('5.0 pm',
maxLines: 1,
overflow: TextOverflow.ellipsis,),],
),


]
)),

],
),
SizedBox(height: 10.0,),
Row(
children: [
Stack(
alignment: AlignmentDirectional.bottomEnd,
children:[
CircleAvatar(
radius: 30.0,
backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1544385761302253570/___DBwMB_400x400.jpg'),
),
CircleAvatar(
radius: 10.0,
backgroundColor: Colors.white,),

CircleAvatar(
radius: 30.0,
backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1544385761302253570/___DBwMB_400x400.jpg'),
),
CircleAvatar(
radius: 7.0,
backgroundColor: Colors.green,                      ),


] ),
SizedBox(
width:25.0,
),
Expanded(
child:
Column(
crossAxisAlignment: CrossAxisAlignment.start,
children:[
Text('Nehal Elsamoly',
maxLines: 1,
overflow: TextOverflow.ellipsis,
style: TextStyle
(
fontWeight: FontWeight.bold,
),),
SizedBox(
height: 5.0,
),



Row(
children: [
Text('hello nehal'),

Padding(
padding: const EdgeInsets.symmetric(horizontal: 5.0),

child:  Container(
width: 7.0,
height: 7.0  ,
decoration: BoxDecoration(
color: Colors.lightBlue,
shape: BoxShape.circle,
),
)
,


),
Text('5.0 pm',
maxLines: 1,
overflow: TextOverflow.ellipsis,),],
),


]
)),

],
),
Row(
children: [
Stack(
alignment: AlignmentDirectional.bottomEnd,
children:[
CircleAvatar(
radius: 30.0,
backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1544385761302253570/___DBwMB_400x400.jpg'),
),
CircleAvatar(
radius: 10.0,
backgroundColor: Colors.white,),

CircleAvatar(
radius: 30.0,
backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1544385761302253570/___DBwMB_400x400.jpg'),
),
CircleAvatar(
radius: 7.0,
backgroundColor: Colors.green,                      ),


] ),
SizedBox(
width:25.0,
),
Expanded(
child:
Column(
crossAxisAlignment: CrossAxisAlignment.start,
children:[
Text('Nehal Elsamoly',
maxLines: 1,
overflow: TextOverflow.ellipsis,
style: TextStyle
(
fontWeight: FontWeight.bold,
),),
SizedBox(
height: 5.0,
),



Row(
children: [
Text('hello nehal'),

Padding(
padding: const EdgeInsets.symmetric(horizontal: 5.0),

child:  Container(
width: 7.0,
height: 7.0  ,
decoration: BoxDecoration(
color: Colors.lightBlue,
shape: BoxShape.circle,
),
)
,


),
Text('5.0 pm',
maxLines: 1,
overflow: TextOverflow.ellipsis,),],
),


]
)),

],
),
SizedBox(height: 10.0,),
Row(
children: [
Stack(
alignment: AlignmentDirectional.bottomEnd,
children:[
CircleAvatar(
radius: 30.0,
backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1544385761302253570/___DBwMB_400x400.jpg'),
),
CircleAvatar(
radius: 10.0,
backgroundColor: Colors.white,),

CircleAvatar(
radius: 30.0,
backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1544385761302253570/___DBwMB_400x400.jpg'),
),
CircleAvatar(
radius: 7.0,
backgroundColor: Colors.green,                      ),


] ),
SizedBox(
width:25.0,
),
Expanded(
child:
Column(
crossAxisAlignment: CrossAxisAlignment.start,
children:[
Text('Nehal Elsamoly',
maxLines: 1,
overflow: TextOverflow.ellipsis,
style: TextStyle
(
fontWeight: FontWeight.bold,
),),
SizedBox(
height: 5.0,
),



Row(
children: [
Text('hello nehal'),

Padding(
padding: const EdgeInsets.symmetric(horizontal: 5.0),

child:  Container(
width: 7.0,
height: 7.0  ,
decoration: BoxDecoration(
color: Colors.lightBlue,
shape: BoxShape.circle,
),
)
,


),
Text('5.0 pm',
maxLines: 1,
overflow: TextOverflow.ellipsis,),],
),


]
)),

],
),
Row(
children: [
Stack(
alignment: AlignmentDirectional.bottomEnd,
children:[
CircleAvatar(
radius: 30.0,
backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1544385761302253570/___DBwMB_400x400.jpg'),
),
CircleAvatar(
radius: 10.0,
backgroundColor: Colors.white,),

CircleAvatar(
radius: 30.0,
backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1544385761302253570/___DBwMB_400x400.jpg'),
),
CircleAvatar(
radius: 7.0,
backgroundColor: Colors.green,                      ),


] ),
SizedBox(
width:25.0,
),
Expanded(
child:
Column(
crossAxisAlignment: CrossAxisAlignment.start,
children:[
Text('Nehal Elsamoly',
maxLines: 1,
overflow: TextOverflow.ellipsis,
style: TextStyle
(
fontWeight: FontWeight.bold,
),),
SizedBox(
height: 5.0,
),



Row(
children: [
Text('hello nehal'),

Padding(
padding: const EdgeInsets.symmetric(horizontal: 5.0),

child:  Container(
width: 7.0,
height: 7.0  ,
decoration: BoxDecoration(
color: Colors.lightBlue,
shape: BoxShape.circle,
),
)
,


),
Text('5.0 pm',
maxLines: 1,
overflow: TextOverflow.ellipsis,),],
),


]
)),

],
),
SizedBox(height: 10.0,),
Row(
children: [
Stack(
alignment: AlignmentDirectional.bottomEnd,
children:[
CircleAvatar(
radius: 30.0,
backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1544385761302253570/___DBwMB_400x400.jpg'),
),
CircleAvatar(
radius: 10.0,
backgroundColor: Colors.white,),

CircleAvatar(
radius: 30.0,
backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1544385761302253570/___DBwMB_400x400.jpg'),
),
CircleAvatar(
radius: 7.0,
backgroundColor: Colors.green,                      ),


] ),
SizedBox(
width:25.0,
),
Expanded(
child:
Column(
crossAxisAlignment: CrossAxisAlignment.start,
children:[
Text('Nehal Elsamoly',
maxLines: 1,
overflow: TextOverflow.ellipsis,
style: TextStyle
(
fontWeight: FontWeight.bold,
),),
SizedBox(
height: 5.0,
),



Row(
children: [
Text('hello nehal'),

Padding(
padding: const EdgeInsets.symmetric(horizontal: 5.0),

child:  Container(

overflow: TextOverflow.ellipsis,
style: TextStyle
(
fontWeight: FontWeight.bold,
),),
SizedBox(
height: 5.0,
),



Row(
children: [
Text('hello nehal'),

Padding(
padding: const EdgeInsets.symmetric(horizontal: 5.0),

child:  Container(
width: 7.0,
height: 7.0  ,
decoration: BoxDecoration(
color: Colors.lightBlue,
shape: BoxShape.circle,
),
)
,


),
Text('5.0 pm',
maxLines: 1,
overflow: TextOverflow.ellipsis,),],
),


]
)),

],
),
SizedBox(height: 10.0,),
Row(
children: [
Stack(
alignment: AlignmentDirectional.bottomEnd,
children:[
CircleAvatar(
radius: 30.0,
backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1544385761302253570/___DBwMB_400x400.jpg'),
),
CircleAvatar(
radius: 10.0,
backgroundColor: Colors.white,),

CircleAvatar(
radius: 30.0,
backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1544385761302253570/___DBwMB_400x400.jpg'),
),
CircleAvatar(
radius: 7.0,
backgroundColor: Colors.green,                      ),


] ),
SizedBox(
width:25.0,
),
Expanded(
child:
Column(
crossAxisAlignment: CrossAxisAlignment.start,
children:[
Text('Nehal Elsamoly',
maxLines: 1,
overflow: TextOverflow.ellipsis,
style: TextStyle
(
fontWeight: FontWeight.bold,
),),
SizedBox(
height: 5.0,
),



Row(
children: [
Text('hello nehal'),

Padding(
padding: const EdgeInsets.symmetric(horizontal: 5.0),

child:  Container(
width: 7.0,
height: 7.0  ,
decoration: BoxDecoration(
color: Colors.lightBlue,
shape: BoxShape.circle,
),
)
,


),
Text('5.0 pm',
maxLines: 1,
overflow: TextOverflow.ellipsis,),],
),


]
)),

],
),
Row(
children: [
Stack(
alignment: AlignmentDirectional.bottomEnd,
children:[
CircleAvatar(
radius: 30.0,
backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1544385761302253570/___DBwMB_400x400.jpg'),
),
CircleAvatar(
radius: 10.0,
backgroundColor: Colors.white,),

CircleAvatar(
radius: 30.0,
backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1544385761302253570/___DBwMB_400x400.jpg'),
),
CircleAvatar(
radius: 7.0,
backgroundColor: Colors.green,                      ),


] ),
SizedBox(
width:25.0,
),
Expanded(
child:
Column(
crossAxisAlignment: CrossAxisAlignment.start,
children:[
Text('Nehal Elsamoly',
maxLines: 1,
overflow: TextOverflow.ellipsis,
style: TextStyle
(
fontWeight: FontWeight.bold,
),),
SizedBox(
height: 5.0,
),



Row(
children: [
Text('hello nehal'),

Padding(
padding: const EdgeInsets.symmetric(horizontal: 5.0),

child:  Container(
width: 7.0,
height: 7.0  ,
decoration: BoxDecoration(
color: Colors.lightBlue,
shape: BoxShape.circle,
),
)
,


),
Text('5.0 pm',
maxLines: 1,
overflow: TextOverflow.ellipsis,),],
),


]
)),

],
),
SizedBox(height: 10.0,),
Row(
children: [
Stack(
alignment: AlignmentDirectional.bottomEnd,
children:[
CircleAvatar(
radius: 30.0,
backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1544385761302253570/___DBwMB_400x400.jpg'),
),
CircleAvatar(
radius: 10.0,
backgroundColor: Colors.white,),

CircleAvatar(
radius: 30.0,
backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1544385761302253570/___DBwMB_400x400.jpg'),
),
CircleAvatar(
radius: 7.0,
backgroundColor: Colors.green,                      ),


] ),
SizedBox(
width:25.0,
),
Expanded(
child:
Column(
crossAxisAlignment: CrossAxisAlignment.start,
children:[
Text('Nehal Elsamoly',
maxLines: 1,
overflow: TextOverflow.ellipsis,
style: TextStyle
(
fontWeight: FontWeight.bold,
),),
SizedBox(
height: 5.0,
),



Row(
children: [
Text('hello nehal'),

Padding(
padding: const EdgeInsets.symmetric(horizontal: 5.0),

child:  Container(
width: 7.0,
height: 7.0  ,
decoration: BoxDecoration(
color: Colors.lightBlue,
shape: BoxShape.circle,
),
)
,


),
Text('5.0 pm',
maxLines: 1,
overflow: TextOverflow.ellipsis,),],
),


]
)),

],
),
Row(
children: [
Stack(
alignment: AlignmentDirectional.bottomEnd,
children:[
CircleAvatar(
radius: 30.0,
backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1544385761302253570/___DBwMB_400x400.jpg'),
),
CircleAvatar(
radius: 10.0,
backgroundColor: Colors.white,),

CircleAvatar(
radius: 30.0,
backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1544385761302253570/___DBwMB_400x400.jpg'),
),
CircleAvatar(
radius: 7.0,
backgroundColor: Colors.green,                      ),


] ),
SizedBox(
width:25.0,
),
Expanded(
child:
Column(
crossAxisAlignment: CrossAxisAlignment.start,
children:[
Text('Nehal Elsamoly',
maxLines: 1,
overflow: TextOverflow.ellipsis,
style: TextStyle
(
fontWeight: FontWeight.bold,
),),
SizedBox(
height: 5.0,
),



Row(
children: [
Text('hello nehal'),

Padding(
padding: const EdgeInsets.symmetric(horizontal: 5.0),

child:  Container(
width: 7.0,
height: 7.0  ,
decoration: BoxDecoration(
color: Colors.lightBlue,
shape: BoxShape.circle,
),
)
,


),
Text('5.0 pm',
maxLines: 1,
overflow: TextOverflow.ellipsis,),],
),


]
)),

],
),
SizedBox(height: 10.0,),
Row(
children: [
Stack(
alignment: AlignmentDirectional.bottomEnd,
children:[
CircleAvatar(
radius: 30.0,
backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1544385761302253570/___DBwMB_400x400.jpg'),
),
CircleAvatar(
radius: 10.0,
backgroundColor: Colors.white,),

CircleAvatar(
radius: 30.0,
backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1544385761302253570/___DBwMB_400x400.jpg'),
),
CircleAvatar(
radius: 7.0,
backgroundColor: Colors.green,                      ),


] ),
SizedBox(
width:25.0,
),
Expanded(
child:
Column(
crossAxisAlignment: CrossAxisAlignment.start,
children:[
Text('Nehal Elsamoly',
maxLines: 1,
overflow: TextOverflow.ellipsis,
style: TextStyle
(
fontWeight: FontWeight.bold,
),),
SizedBox(
height: 5.0,
),



Row(
children: [
Text('hello nehal'),

Padding(
padding: const EdgeInsets.symmetric(horizontal: 5.0),

child:  Container(
width: 7.0,
height: 7.0  ,
decoration: BoxDecoration(
color: Colors.lightBlue,
shape: BoxShape.circle,
),
)
,


),
Text('5.0 pm',
maxLines: 1,
overflow: TextOverflow.ellipsis,),],
),


]
)),

],
),
Row(
children: [
Stack(
alignment: AlignmentDirectional.bottomEnd,
children:[
CircleAvatar(
radius: 30.0,
backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1544385761302253570/___DBwMB_400x400.jpg'),
),
CircleAvatar(
radius: 10.0,
backgroundColor: Colors.white,),

CircleAvatar(
radius: 30.0,
backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1544385761302253570/___DBwMB_400x400.jpg'),
),
CircleAvatar(
radius: 7.0,
backgroundColor: Colors.green,                      ),


] ),
SizedBox(
width:25.0,
),


]
)), )*/