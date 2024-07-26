import 'package:flutter/material.dart';

class TitleType extends StatefulWidget {
   TitleType(this.title,this.isSelected,this.onTap,{super.key});
  String title;
  bool isSelected;
  VoidCallback onTap;

  @override
  State<TitleType> createState() => _TitleTypeState();
}

class _TitleTypeState extends State<TitleType> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Padding( 
        padding: const EdgeInsets.all(5),
        child: Container(
          height: 60,
          width: 100,
          decoration: BoxDecoration( 
            color: widget.isSelected==true?const Color.fromARGB(255, 97, 194, 100):Colors.transparent,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Center(
            child: Text( 
              widget.title,
              style: TextStyle(
                color: widget.isSelected==true?Colors.white:Colors.grey
              ),
            ),
          ),
        ),
      ),
    );
  }
}