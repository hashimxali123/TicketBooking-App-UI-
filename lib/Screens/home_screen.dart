import 'package:flutter/material.dart';
import 'package:ticketbooking/Screens/ticket_screen.dart';
import 'package:ticketbooking/Widgets/hotels_card.dart';
import 'package:ticketbooking/Widgets/ticket_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFeeedf2),
      body: ListView(

        children: [

          Container(
            padding: EdgeInsets.fromLTRB(16, 72, 16, 0),
            child: Column(
              children: [

                Row(
                  children: [

                    Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text("Good morning",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),),

                        SizedBox(height: 5,),

                        Text("Book Tickets",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),)

                      ],
                    ),
                   Spacer(),

                  Container(
                    height: 45,
                    width: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(

                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/ticket.jpg")
                      )

                      ),
                    ),

                  ],

                ),

                SizedBox(height: 27,),

                Container(
                  height: 40,
                  width: double.maxFinite,

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),

                  child: Row(
                    children:  [

                    Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),

                      SizedBox(width: 5,),
                      Text("Search",
                      style: TextStyle(
                        color: Colors.grey,
                      ),),

                    ],

                  ),

                )


              ],
            ),
          ),

          Container(
            padding: EdgeInsets.fromLTRB(16, 31, 16, 0),
            child: Column(

              children: [
                Row(
                  children: [
                    Text('Upcoming Flights',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),),

                    Spacer(),

                    Text("view all",
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 16,
                    ),),
                    SizedBox(width: 16,)
                  ],
                ),
                SizedBox(height: 15,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TicketWidget(),
                      TicketWidget(),
                      TicketWidget(),
                    ],
                  ),
                )
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Text('Hotels',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                  ),),

                Spacer(),

                Text("view all",
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 16,
                  ),),
                SizedBox(width: 16,)
              ],
            ),
          ),


          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                HotelCard(),
                SizedBox(width: 20,),
                HotelCard(),
                SizedBox(width: 20,),
                HotelCard(),

              ],
            ),

          )



        ],
      )
    );
  }
}
