import 'package:flutter/material.dart';

class SeeMore extends StatelessWidget {
   const SeeMore({super.key, required this.headpath});
 final String headpath;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(headpath,style:const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600
        )),
        const Spacer(),
        const Text("See more",style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Color(0XFF027A48),
            fontSize: 18
        ),),
        const Icon(Icons.arrow_forward_ios,color:Color(0XFF027A48),size: 20,)
      ],
    );
  }
}
