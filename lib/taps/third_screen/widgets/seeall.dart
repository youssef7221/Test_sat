import 'package:flutter/material.dart';

class SeeAll extends StatelessWidget {
  const SeeAll({super.key, required this.headpath});
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
        const Text("See All",style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Color(0XFF5925DC),
            fontSize: 18
        ),),
        const Icon(Icons.arrow_forward_ios,color:Color(0XFF5925DC),size: 20,)
      ],
    );
  }
}
