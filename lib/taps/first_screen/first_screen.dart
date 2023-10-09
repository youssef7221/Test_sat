import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:quiz/taps/first_screen/widgets/emojis.dart';
import 'package:quiz/taps/first_screen/widgets/exercisewidgets.dart';
import 'package:quiz/taps/first_screen/widgets/my_rich_text.dart';
import 'package:quiz/taps/first_screen/widgets/scrollablepage.dart';
import 'package:quiz/taps/first_screen/widgets/see_more.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
List<Widget> myitems =const [
  MyScrollPage(Color(0XFFECFDF3)),
  MyScrollPage(Colors.red),
  MyScrollPage(Colors.grey)
];
class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const MyRichtext(),
              SizedBox(
                height: MediaQuery.of(context).size.height *.01 ,
              ),
             const Text(
                "How are you feeling today?",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0XFF371B34)),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height *.01 ,
              ),
              Row(
                children: [
                  Expanded(
                    child: Emojis(
                        imagepath: "assets/firstscreen/love.png", nameofemoji: "Love"),
                  ),
                  Expanded(
                    child: Emojis(
                        imagepath: "assets/firstscreen/cool.png", nameofemoji: "Cool"),
                  ),
                  Expanded(
                    child: Emojis(
                        imagepath: "assets/firstscreen/happy.png", nameofemoji: "Happy"),
                  ),
                  Expanded(
                    child: Emojis(
                        imagepath: "assets/firstscreen/sad.png", nameofemoji: "Sad"),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height *.05 ,
              ),
              const SeeMore(headpath: "feature"),
              SizedBox(height: MediaQuery.of(context).size.height *.01 ,),
              CarouselSlider(options: CarouselOptions(
                height: MediaQuery.of(context).size.height *.2,
                onPageChanged: (index, reason) {
                  currentindex = index;
                  setState(() {
                  });
                },
                enableInfiniteScroll: false,
                viewportFraction: 1,
              ), items: myitems,),
              SizedBox(height: MediaQuery.of(context).size.height *.005 ,),
              Center(
                child: AnimatedSmoothIndicator(activeIndex: currentindex,
                  count: myitems.length,
                  effect:const ScrollingDotsEffect(
                    activeDotScale: 1,
                    dotHeight: 6,
                    dotWidth: 6,
                    activeDotColor: Color(0XFF98A2B3),
                    dotColor: Color(0xffD9D9D9)
                  ),
                ),
              ),
              SizedBox( height: MediaQuery.of(context).size.height *.05),
              const SeeMore(headpath: "Exercise"),
              SizedBox(height: MediaQuery.of(context).size.height *.01 ,),
            const Exercise()],
          ),
        ));
  }

  PreferredSizeWidget buildAppBar(){
   return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      title:const Text(
        "Moody",
        style: TextStyle(
            color: Colors.black, fontSize: 24, fontWeight: FontWeight.w400),
      ),
      leading: Image.asset("assets/firstscreen/Group.png"),
      actions: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: badges.Badge(
            badgeContent:const Text(""),
            position: badges.BadgePosition.topEnd(),
            child: Image.asset("assets/firstscreen/Icon.png"),
          ),
        ),      ],
    );
  }
}
