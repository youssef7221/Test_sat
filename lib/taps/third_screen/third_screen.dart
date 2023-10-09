import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/taps/third_screen/widgets/MyChip.dart';
import 'package:quiz/taps/third_screen/widgets/docotrcontainer.dart';
import 'package:quiz/taps/third_screen/widgets/seeall.dart';
import 'package:quiz/taps/third_screen/widgets/serachbar.dart';
import 'package:quiz/utills/appsizebox.dart';
import 'package:carousel_slider/carousel_slider.dart';
bool isSelectedDisc = false;
bool isSelectedNews = false;
bool isSelectedView = false;
bool isSelectedSave = false;
List<Widget> myChips = [
  MyChip(name: "Discover", isSelected: isSelectedDisc),
  MyChip(name: "Most Viewed", isSelected: isSelectedView),
  MyChip(name: "News", isSelected: isSelectedNews),
  MyChip(name: "Saved", isSelected: isSelectedSave),
];
List<Widget> myScrollablephotos = [
  Image.asset("assets/thirdscreen/first.png"),
  Image.asset("assets/thirdscreen/second.png"),
];
class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0XFFf9fafb),
      appBar: buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(right: 15,left: 15,top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const MySearchBar(),
            MySizedBoxes.sizedbox_03(context),
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return myChips[index];
                },
                itemCount: myChips.length,
              ),
            ),
            MySizedBoxes.sizedbox_02(context),
            const SeeAll(headpath: "Hot topics"),
            MySizedBoxes.sizedbox_02(context),
            CarouselSlider(items: myScrollablephotos,
                options: CarouselOptions(
      height: MediaQuery.of(context).size.height*.2,
                  enableInfiniteScroll: false,
                  viewportFraction: 1
            )),
        MySizedBoxes.sizedbox_03(context),
            const Text("Get Tips",style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 18
        ),),
            MySizedBoxes.sizedbox_01(context),
            const DoctorContainer(),
            const SeeAll(headpath: "Cycle Phases and Period")
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/thirdscreen/flower.png",
            width: 24,
            height: 24,
          ),
          Text(
            "AliceCare",
            style: GoogleFonts.milonga(
                fontSize: 24, fontWeight: FontWeight.w400, color: Colors.black),
          )
        ],
      ),
    );
  }
}
