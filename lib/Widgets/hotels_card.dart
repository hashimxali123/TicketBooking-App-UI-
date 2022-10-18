import 'package:flutter/material.dart';

class HotelCard extends StatelessWidget {
  const HotelCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
      margin: EdgeInsets.all(16),
      height: 300,
      width: MediaQuery.of(context).size.width* 0.55,
     
      decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
        color: Color(0xFF687DAf),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Container(
               margin: EdgeInsets.only(top: 17),
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/hotel2.jpg"),
              )
            ),
            
          ),

              SizedBox(height: 13,),

              Text("Open Space",style: TextStyle(
                color: Colors.white38,
                fontWeight: FontWeight.bold,
                fontSize: 21,
              ),),

          SizedBox(height: 2,),
          Text("London",style: TextStyle(color: Colors.white,
          fontWeight: FontWeight.bold),),
          SizedBox(height:  9,),


          Text(r"$25/night",style: TextStyle(
            color: Colors.white38,
            fontWeight: FontWeight.bold,
            fontSize: 27,
          ),),

        ],

      ),
    );
  }
}
