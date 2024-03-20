import 'package:chats/core/colors.dart';
import 'package:flutter/material.dart';

TextStyle titleStyle ({Color? color}){
  return TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 24 ,
    color:color??AppColor.secondry ,
 );
}
TextStyle bodyStyle ({Color? color}){
  return TextStyle(
    fontWeight:FontWeight.bold,
    fontSize: 12 ,
    color:color??AppColor.secondry,
  );
}