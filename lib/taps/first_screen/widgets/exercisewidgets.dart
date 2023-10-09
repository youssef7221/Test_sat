import 'package:flutter/material.dart';

class Exercise extends StatelessWidget {
  const Exercise({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Container(
              margin: const EdgeInsets.all(5),
              height: MediaQuery.of(context).size.height* .07,
              width: MediaQuery.of(context).size.width *.38,
              decoration: BoxDecoration(
                  color:const Color(0XFFF9F5FF),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                children: [
                  Image.asset("assets/firstscreen/relaxation.png"),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text("Relaxation")
                ],
              ),
            )
            ,
            Container(
              margin:const EdgeInsets.all(5),
              height: MediaQuery.of(context).size.height* .07,
              width: MediaQuery.of(context).size.width *.38,
              decoration: BoxDecoration(
                  color:const Color(0XFFFFFAF5),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                children: [
                  Image.asset("assets/firstscreen/beathing.png"),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text("Beathing")
                ],
              ),
            )
          ],
        ),
        Column(
          children: [
            Container(
              margin:const EdgeInsets.all(5),
              height: MediaQuery.of(context).size.height* .07,
              width: MediaQuery.of(context).size.width *.38,
              decoration: BoxDecoration(
                  color:const Color(0XFFFDF2FA),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                children: [
                  Image.asset("assets/firstscreen/meditation.png"),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text("Meditation")
                ],
              ),
            )
            ,
            Container(
              margin: const EdgeInsets.all(5),
              height: MediaQuery.of(context).size.height* .07,
              width: MediaQuery.of(context).size.width *.38,
              decoration: BoxDecoration(
                  color:const Color(0XFFF0F9FF),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                children: [
                  Image.asset("assets/firstscreen/yoga.png"),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text("Yoga")
                ],
              ),
            )
          ],
        )
      ],
    );


  }
}
