import 'package:flutter/material.dart';

import '../../../utills/appsizebox.dart';

class DoctorContainer extends StatelessWidget {
  const DoctorContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height*.25,
      decoration: BoxDecoration(
          color: const Color(0XFFE4E7EC),
          borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        children: [
          Expanded(child: Image.asset("assets/thirdscreen/doctor.png")),
          Expanded(
            child: Padding(
              padding:const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Connect with doctors & get suggestions",style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600
                  ),
                  ),
                  MySizedBoxes.sizedbox_02(context),
                  const Text("Connect now and get expert insights",style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                  ),),
                  MySizedBoxes.sizedbox_03(context),
                  Container(
                      padding:const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color:const Color(0xff7F56D9),
                      ),
                      child:const Text("View Details",style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white
                      ),)
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );

  }
}
