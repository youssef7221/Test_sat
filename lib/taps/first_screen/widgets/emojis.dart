import 'package:flutter/material.dart';

class Emojis extends StatelessWidget {
String imagepath ;
String nameofemoji;
Emojis({super.key, required this.imagepath , required this.nameofemoji});
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
        CircleAvatar(
        backgroundColor:const Color(0XFFE4E7EC),
    radius: 30,
    child: Image.asset(imagepath),
    ),
    const SizedBox(height: 8,),
    Text(nameofemoji ,style:const TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16
    ),)]
    ,);
  }
}
