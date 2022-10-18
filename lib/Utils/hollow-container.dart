import 'package:flutter/material.dart';

class HollowContainer extends StatelessWidget {
  const HollowContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(

        color:  Color(0xFF526799),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 3,color: Colors.white),
      ),
    );
  }
}
