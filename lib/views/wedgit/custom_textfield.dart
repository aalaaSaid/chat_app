import 'package:flutter/material.dart';

import '../../core/colors.dart';
class custom_textf extends StatelessWidget {
const custom_textf({required this.lab , required this.pre , this.suff ,this.suffFun ,this.obscure});
  final String lab ;
  final IconData pre ;
  final IconData? suff ;
  final Function()?suffFun ;
  final bool? obscure ;

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      obscureText: obscure??false,
      decoration: InputDecoration(
          prefixIcon: Icon(pre , color: AppColor.secondry,),
          label:Text('$lab') ,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: AppColor.secondry),
          ),
          suffixIcon: suff != null ?IconButton(
              onPressed: suffFun,
              icon:Icon(suff,
              color: AppColor.secondry,
              )):
          SizedBox() ,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColor.secondry)
          )

      ),
    );
  }
}
