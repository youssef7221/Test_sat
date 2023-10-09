import 'package:flutter/cupertino.dart';

abstract class MySizedBoxes{
  static Widget sizedbox_03(BuildContext context) {
    return SizedBox(
      height: MediaQuery
          .of(context)
          .size
          .height * .03,
    );
  }
  static Widget sizedbox_05(BuildContext context){
    return SizedBox(
      height: MediaQuery.of(context).size.height *.05,
    );
  }
  static Widget sizedbox_01(BuildContext context){
    return SizedBox(
      height: MediaQuery.of(context).size.height *.01,
    );
  }
  static Widget sizedbox_02(BuildContext context){
    return SizedBox(
      height: MediaQuery.of(context).size.height *.025,
    );
  }
  static Widget sizedbox_005(BuildContext context){
    return SizedBox(
      height: MediaQuery.of(context).size.height *.005,
    );
  }
  static Widget sizedbox_wid002(BuildContext context){
    return SizedBox(
      width: MediaQuery.of(context).size.width *.005,
    );
  }

}