import 'package:flutter/material.dart';
class MyRichtext extends StatelessWidget {
  const MyRichtext({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(text:const TextSpan(
        text: "Hello, ",
        style:TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.black
        ),
        children: [
          TextSpan(
              text: "Sara Rose",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black
              )
          )
        ]
    ));
  }
}
