import 'package:chats/core/colors.dart';
import 'package:chats/core/text_styles.dart';
import 'package:flutter/material.dart';

class massages extends StatelessWidget {
  const massages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.secondry,
appBar: AppBar(
  elevation: 0,
  centerTitle: true,
  backgroundColor: AppColor.secondry,
  title: Text('Aalaa Said',
  style: titleStyle(
    color: AppColor.white
  ),
  ),
  actions: [
    Icon(Icons.settings_sharp ,
    size: 30,
    ) ,

  ],
),
      body: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(35),
                  topLeft: Radius.circular(35),
                  ),
                  color: AppColor.white
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage('https://wallpapercave.com/wp/wp9166155.jpg'),
                          ) ,
                          SizedBox(width: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('9:30 am' ,
                                style: bodyStyle(
                                  color: AppColor.black,
                                ),
                              ),
                              SizedBox(height: 5,),
                              Container(
                                padding: EdgeInsets.all(25),
                                width: 250,
                                height:70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xfff2f3f7),
                                ),
                                child: Text('Hi , Aalaa'),
                              ),
                              SizedBox(height: 15,),
                              Container(
                                padding: EdgeInsets.all(25),
                                width: 250,
                                height:70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xfff2f3f7),
                                ),
                                child: Text('How are you?'),
                              ),
                              SizedBox(height: 30,),
                              Text('Now',
                                style: bodyStyle(
                                    color: AppColor.black
                                ),

                              ),
                              SizedBox(height: 5,),
                              Container(
                                padding: EdgeInsets.all(16),
                                width: 250,
                                height:100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColor.secondry,
                                ),
                                child: Text('I am fine thank you , I want to tell you about my exams, I hate my universty , I want to graduate.'),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      TextFormField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.send ,
                          color: AppColor.secondry,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: AppColor.secondry),
                      ),
                          hintText: 'Tab to write your Massage'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      

    );
  }
}
