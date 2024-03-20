import 'package:chats/views/chat/chat_sc.dart';
import 'package:chats/views/sign_up/register.dart';
import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../../core/text_styles.dart';
import '../wedgit/custom_textfield.dart';

class signIn extends StatefulWidget {
  const signIn({Key? key}) : super(key: key);

  @override
  State<signIn> createState() => _signInState();
}

class _signInState extends State<signIn> {
  bool isNotShow = true ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage('https://tse4.mm.bing.net/th?id=OIP.C32jNkxGbCJt24YRarNvaQHaHa&pid=Api&P=0&h=220'),
                  ),
                ),
                SizedBox(height: 20),
                Text('Log in to your account!' ,
                  style: titleStyle(),
                ),
                SizedBox(height: 20),
                custom_textf(
                    lab: 'Email', pre: Icons.email),
                SizedBox(height: 10,),
                custom_textf(
                  lab: 'Password',
                  pre: Icons.lock,
                  obscure: true,
                  suff: isNotShow?Icons.visibility_off:Icons.remove_red_eye,
                  suffFun: (){
                    setState(() {
                      isNotShow = !isNotShow ;
                    });
                  },
                ) ,
                SizedBox(height: 10,),
                custom_textf(
                    lab: 'Name', pre: Icons.person),
                SizedBox(height: 20,),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context)=>chato()));
                  },
                    child: Text('Register') ,
                    style: ElevatedButton.styleFrom(
                      backgroundColor:AppColor.secondry,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment:MainAxisAlignment.center ,
                  children: [
                    Text('If you have an account' ,
                      style: bodyStyle(color: AppColor.black),
                    ),
                    TextButton(onPressed: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context)=>register()));
                    },
                        child: Text('Login Now!',
                          style:bodyStyle() ,
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
