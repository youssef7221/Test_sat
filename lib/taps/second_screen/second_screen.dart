import 'package:flutter/material.dart';
import 'package:quiz/taps/second_screen/widgets/healthwidget.dart';
import 'package:quiz/taps/second_screen/widgets/tabbar_view_containers.dart';
import 'package:quiz/taps/second_screen/widgets/welcome.dart';
import 'package:quiz/utills/appsizebox.dart';
class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});


  @override
  State<SecondScreen> createState() => _SecondScreenState();
}
class _SecondScreenState extends State<SecondScreen> with TickerProviderStateMixin {
 late TabController _tabcontroller ;
  @override
  void initState() {
    // TODO: implement initState
   _tabcontroller = TabController(length: 4, vsync: this);
    super.initState();
  }
@override
void dispose() {
  _tabcontroller.dispose();
  super.dispose();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const WelcomeRow(),
            MySizedBoxes.sizedbox_02(context),
            Container(
              height: MediaQuery.of(context).size.height*.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:const Color(0XFFF8F9FC)
              ),
              child:const HealthDetails()
            ),
            MySizedBoxes.sizedbox_05(context),
            const Text("Workout Programs",style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18
            ),),
            MySizedBoxes.sizedbox_01(context),
          TabBar(tabs: const [
            Tab(child: Text("All Type"),),
            Tab(child: Text("Full Body"),),
            Tab(child: Text("Upper"),),
            Tab(child: Text("Lower"),)
          ],
          indicatorColor:const Color(0XFF363F72),
          labelPadding:const EdgeInsets.symmetric(horizontal: 5),
          labelColor:const Color(0XFF667085),
          labelStyle:const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400
          ),
          controller:_tabcontroller),
            MySizedBoxes.sizedbox_03(context),
            SizedBox(
              height: MediaQuery.of(context).size.height*.4,
              child: TabBarView(
              controller: _tabcontroller
                  ,children:const [
                TabBarContainers(firstcolor: Color(0XFFF8F9FC),secondcolor: Color(0XFFF8F9FC),),
                TabBarContainers(firstcolor: Colors.redAccent,secondcolor: Colors.blueGrey,),
                TabBarContainers(firstcolor: Colors.blueAccent,secondcolor: Colors.brown,),
                TabBarContainers(firstcolor:Colors.purple ,secondcolor: Colors.lime,),
              ]),
            )
          ],
        ),
      ),
    );
  }
}



