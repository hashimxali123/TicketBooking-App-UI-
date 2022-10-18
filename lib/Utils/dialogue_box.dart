import 'package:flutter/material.dart';

class WhiteBox extends StatelessWidget {

  final  icon_f;
 final   text;
  const WhiteBox({Key? key, required this.icon_f, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.fromLTRB(20, 8, 20, 8),
      padding: EdgeInsets.all(10),
      width: double.maxFinite,
      height: 45,

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Icon(
           icon_f
          ),

          SizedBox(width: 10,),

          Text(text),

        ],
      ),
    );
  }
}
