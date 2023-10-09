import 'package:flutter/material.dart';

class MyChip extends StatefulWidget {
  bool isSelected ;
 final String name ;
  MyChip({super.key, required this.name , required this.isSelected});

  @override
  State<MyChip> createState() => _MyChipState();
}

class _MyChipState extends State<MyChip> {
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: ChoiceChip(
        label: Text(
          widget.name,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,
          color: widget.isSelected ?const Color(0xff6941C6):const Color(0XFF667085)),
        ),
        selected: widget.isSelected,
        selectedColor: const Color(0xffF4EBFF),
        onSelected: (newState) {
        setState(() {
          widget.isSelected = newState;
        });
        },
      ),
    );
  }
}
