import 'package:chats/core/colors.dart';
import 'package:chats/core/text_styles.dart';
import 'package:chats/views/chat/model.dart';
import 'package:chats/views/chat/private_sc.dart';
import 'package:flutter/material.dart';
class chato extends StatelessWidget {
  const chato({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.secondry,
      appBar: AppBar(
        backgroundColor: AppColor.secondry,
        title: Text('Chats',
        style: titleStyle(
          color: Colors.white
        ),),
        elevation: 0,
        actions: [
          Icon(Icons.settings,
          size: 24,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Favourite Chats' ,
                style: bodyStyle(color: Colors.white),),
            ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              child: ListView.separated(
                itemBuilder: (context,index)=>Column(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage('https://wallpapercave.com/wp/wp9166155.jpg'),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text('Aalaa')
                  ],
                ),
                  separatorBuilder: (context,index)=>SizedBox(width: 5,),
                  itemCount: 10,
              scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                color: Colors.white
              ),
             child: ListView.separated(
                 itemBuilder: (context,index)=>InkWell(
                   onTap: (){
                     Navigator.of(context).pushReplacement(MaterialPageRoute(
                         builder:(context)=>massages() ));
                   },
                   child: ListTile(
                     leading: CircleAvatar(
                       backgroundImage: NetworkImage(users[index].image!),
                     ),
                     title: Text(users[index].name!,
                     style: bodyStyle(
                       color: AppColor.black,
                     ),
                       maxLines: 1,
                       overflow: TextOverflow.ellipsis,
                     ),
                     subtitle: Text(
                     users[index].massage!,
                       maxLines: 1,
                       overflow: TextOverflow.ellipsis,
                     ),
                     trailing: Text('${users[index].time}'),
                   ),
                 ),
                 separatorBuilder:(context ,index)=>SizedBox(height: 10,),
                 itemCount: users.length),
            ),
          ),
        ],
      ),

    );
  }
}
