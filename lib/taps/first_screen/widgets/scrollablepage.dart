import 'package:flutter/material.dart';
class MyScrollPage extends StatelessWidget {
 final Color colorname ;
  const MyScrollPage(this.colorname, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: BoxDecoration(
      color: colorname,
      borderRadius: BorderRadius.circular(20)
    ),
      child: Row(
        children: [
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const Spacer(),
                 const Text("Positive vibes",
                  style: TextStyle(
                    color: Color(0XFF344054),
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                  ),),
                 const Spacer(),
                 const Text("Boost your mood with positive vibes",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                    ),),
                 const Spacer(),
                  Row(
                    children: [
                      Image.asset("assets/firstscreen/Button.png"),
                      const SizedBox(width: 7,),
                      const Text("10 mins"),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 4,child: Image.asset("assets/firstscreen/Walking the Dog.png")),
        ],
      ),
    );
  }
}
