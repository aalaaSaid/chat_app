import 'package:chats/views/sign_up/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(chat());
}

class chat extends StatelessWidget {
  const chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: register(),
    );
  }
}
