import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import '../../../utills/appsizebox.dart';

class WelcomeRow extends StatelessWidget{
  const WelcomeRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 35,
          child: Image.asset("assets/secondscreen/Ellipse 10.png"),
        ),
        const SizedBox(
          width: 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Hello, Jade",style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400
            ),
            ),
            MySizedBoxes.sizedbox_005(context),
            const Text("Ready to workout?",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600
            ),
            )
          ],
        ),
        const Spacer(),
        badges.Badge(
            child: Image.asset("assets/firstscreen/Icon.png")),
      ],
    );

  }
}
