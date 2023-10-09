import 'package:flutter/material.dart';

class HealthDetails extends StatelessWidget {
  const HealthDetails({super.key});


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/secondscreen/heart.png"),
                    const Text("Heart Rate", style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400
                    ),),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text("81 BPM", style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                ),)
              ],
            ),
          ),
          const VerticalDivider(
            color: Color(0XFFD9D9D9),
            thickness: 1,
            endIndent: 10,
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/secondscreen/todo.png"),
                    const  Text("To-do", style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400
                    ),
                      textAlign: TextAlign.center,),
                  ],
                ),
                const  SizedBox(
                  height: 10,
                ),
                const Text("32,5 %", style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                ),)
              ],
            ),
          ),
          const VerticalDivider(
            color: Color(0XFFD9D9D9),
            thickness: 1,
            endIndent: 10,
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/secondscreen/calo.png"),
                    const Text("Calo", style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                      textAlign: TextAlign.center,),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ), const Text("1000 CAL", style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                ),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
