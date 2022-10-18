import 'package:flutter/material.dart';
import 'package:ticketbooking/Utils/hollow-container.dart';

class TicketWidget extends StatefulWidget {
  const TicketWidget({Key? key}) : super(key: key);

  @override
  State<TicketWidget> createState() => _TicketWidgetState();
}

class _TicketWidgetState extends State<TicketWidget> {
  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width*0.90,
      child: Column(

        children: [

          Container(
            height: 60,
            decoration:  BoxDecoration(
              borderRadius:BorderRadius.only(topLeft:Radius.circular(16),topRight: Radius.circular(16)),
              color: Color(0xFF526799),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("NYC",style: TextStyle(color: Colors.white,
                    fontSize: 15,fontWeight: FontWeight.w500),
                    ),

                    SizedBox(height: 2,),
                    Text("New-York",style: TextStyle(color: Colors.white,fontSize: 11),)
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Row(
                      children: [

                        HollowContainer(),

                        Container(

                          child:LayoutBuilder(
                            builder: (BuildContext context, BoxConstraints constraints) {
                              return  Flex(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                direction: Axis.horizontal,
                                children:List.generate(3, (index) => Text("-",style:TextStyle(
                                    color: Colors.white
                                ),)),
                              );
                            },
                          )
                        ),

                        Center(
                          child: Transform.rotate(angle: 1.57,
                          child: Container(
                            padding: EdgeInsets.only(left: 2),
                            child: Icon(
                              Icons.flight,
                              color: Colors.white,
                            ),
                          ),
                          ),
                        ),

                        Container(
                            child:LayoutBuilder(
                              builder: (BuildContext context, BoxConstraints constraints) {
                                return  Flex(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  direction: Axis.horizontal,
                                  children:List.generate(3, (index) => Text("-",style:TextStyle(
                                      color: Colors.white
                                  ),)),
                                );
                              },
                            )
                        ),
                        HollowContainer(),

                      ],
                    ),

                    Container(
                      padding: EdgeInsets.only(left: 14),
                      child: Text("8H 30M",style: TextStyle(color: Colors.white,
                          fontSize: 12,fontWeight: FontWeight.w500),
                      ),
                    ),


                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("LDN",style: TextStyle(color: Colors.white,
                        fontSize: 15,fontWeight: FontWeight.w500),
                    ),

                    SizedBox(height: 2,),
                    Text("London",style: TextStyle(color: Colors.white,fontSize: 11),)
                  ],
                ),
              ],
            ),

          ),

          Container(
            height: 20,
            decoration: BoxDecoration(
              color: Color(0xFFF37B67),
            ),
            child: Row(

              children: [
                Container(
                  height: 20,
                  width: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),
                    topRight: Radius.circular(10)),
                    color: Color(0xFFeeedf2),
                  ),
                ),

                Expanded(
                  child: Container(
                    child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
                      return  Flex(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        direction: Axis.horizontal,
                        children: List.generate((constraints.constrainWidth()/6).floor(), (index) => Text("-",style: TextStyle(color: Colors.white),)),
                      );
                    },

                    ),
                  ),
                ),


                Container(
                  height: 20,
                  width: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),
                        topLeft: Radius.circular(10)),
                    color: Color(0xFFeeedf2),
                  ),
                ),
              ],
            ),
          ),

          
          
          
          
          //THIRD CONTAINER
          Container(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 0),

            height: 57,
            decoration:  BoxDecoration(
              borderRadius:BorderRadius.only(bottomLeft:Radius.circular(16),bottomRight: Radius.circular(16)),
              color: Color(0xFFF37B67),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("1 May",style: TextStyle(color: Colors.white,
                        fontSize: 15,fontWeight: FontWeight.w500),
                    ),

                    SizedBox(height: 2,),
                    Text("Date",style: TextStyle(color: Colors.white,fontSize: 11),)
                  ],
                ),
                //////////////////////
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("0:800 AM",style: TextStyle(color: Colors.white,
                        fontSize: 15,fontWeight: FontWeight.w500),
                    ),

                    SizedBox(height: 2,),
                    Text("Departure Time",style: TextStyle(color: Colors.white,fontSize: 11),)
                  ],
                ),
                ///////////////////////
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("23",style: TextStyle(color: Colors.white,
                        fontSize: 15,fontWeight: FontWeight.w500),
                    ),

                    SizedBox(height: 2,),
                    Text("Number",style: TextStyle(color: Colors.white,fontSize: 11),)
                  ],
                ),

              ],

            ),
          ),


        ],
      ),


    );
  }
}
