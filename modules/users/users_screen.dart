import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../model/users/ModelUsers.dart';

class UsersScreen extends StatelessWidget {
  List<ModelUsers> users=[
    ModelUsers(
    id:1,
    name:'Nehal Elsamoly',
    phone :'01288143936',
    ),
    ModelUsers(
      id:1,
      name:'Nehal Elsamoly',
      phone :'01288143936',
    ),
    ModelUsers(
      id:1,
      name:'Nehal Elsamoly',
      phone :'01288143936',
    ),
    ModelUsers(
      id:1,
      name:'Nehal Elsamoly',
      phone :'01288143936',
    ),
    ModelUsers(
      id:1,
      name:'Nehal Elsamoly',
      phone :'01288143936',
    ),
    ModelUsers(
      id:1,
      name:'Nehal Elsamoly',
      phone :'01288143936',
    ),
    ModelUsers(
      id:1,
      name:'Nehal Elsamoly',
      phone :'01288143936',
    ),
    ModelUsers(
      id:1,
      name:'Nehal Elsamoly',
      phone :'01288143936',
    ),

  ];
 //const UsersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('users'),
      ),
      body:ListView.separated(itemBuilder:(context,index)=>buildUserItem(users[index]),
          separatorBuilder:(context,index)=> Container(
            width:double.infinity,
            height: 1.0,
            color:Colors.grey[300],
          ),
          itemCount:users.length),
    );
  }
  Widget buildUserItem(ModelUsers model)=>Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          radius:20.0,
          child:Text('model.id',
            style:
            TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),



        ),
        SizedBox(
          width: 50.0,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('model.name',
              style:
              TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            Row(
              children: [
                Icon(Icons.call,
                  color: Colors.green,),
                Text('model.phone',
                  style:TextStyle(
                    color: Colors.grey,
                  ),),
              ],
            ),
          ],
        )
      ],
    ),
  );
}
