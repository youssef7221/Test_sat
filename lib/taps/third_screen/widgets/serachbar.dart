import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.of(context).size.height *.06,
      child: TextField(
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            prefixIcon:const Icon(Icons.search ,size: 25,color: Colors.grey,),
            hintText: "Articles, Video, Audio and More,...",
            hintStyle:const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide:const BorderSide(
                  color: Colors.grey,
                  width: 0.5
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide:const BorderSide(
                color: Colors.grey,
                width: 0.5,
              ),
            ),
          )
      ),
    );

  }
}
