import 'package:flutter/material.dart';
import 'package:quiz/utills/appsizebox.dart';

class TabBarContainers extends StatelessWidget {
   const TabBarContainers({super.key,required this.firstcolor,required this.secondcolor});
final Color firstcolor ;
final Color secondcolor ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * .19,
          decoration: BoxDecoration(
              color: firstcolor,
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color:const Color(0XFFE4E7EC)),
                      child: const Text(
                        "7 Days",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Morning Yoga",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Improve mental focus.",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Image.asset("assets/secondscreen/clock.png"),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "30 Mins",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 12),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Expanded(child: Image.asset("assets/secondscreen/Yoga.png"))
            ],
          ),
        ),
        MySizedBoxes.sizedbox_01(context),
        Container(
          height: MediaQuery.of(context).size.height * .19,
          decoration: BoxDecoration(
              color: secondcolor,
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color:const Color(0XFFE4E7EC)),
                      child:const Text(
                        "3 Days",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Plank Exercise",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Improve posture and stability.",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Image.asset("assets/secondscreen/clock.png"),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "30 Mins",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 12),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Expanded(child: Image.asset("assets/secondscreen/plank.png"))
            ],
          ),
        )
      ],
    );
  }
}
