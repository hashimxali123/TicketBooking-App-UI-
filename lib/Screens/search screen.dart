import 'package:flutter/material.dart';
import 'package:ticketbooking/Utils/dialogue_box.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFeeedf2),
      body: ListView(
        children: [
          SizedBox(height: 30,),
          
          Container(
              padding: EdgeInsets.all(16),
              child: Text("What are \n you looking for?",style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),)),

          Container(

            height: 60,

            padding:const EdgeInsets.fromLTRB(10, 15, 10, 15),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(16),
                        bottomLeft: Radius.circular(16)),
                        color: Colors.white,
                      ),
                        child:const Center(child: Text("Airline tickets"))),
                  ),

                  Expanded(
                    child: Container(

                        decoration:const BoxDecoration(
                            color: Colors.grey,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(16),
                          bottomRight: Radius.circular(16))
                        ),
                        child: const Center(child: Text("Hotels"))),
                  ),

                ],
              ),

          ),

         SizedBox(height: 10,),
         WhiteBox(icon_f:Icons.flight_takeoff_rounded,text: "Departure",),

          WhiteBox(icon_f: Icons.flight_land_rounded,text: "Arival",),

          SizedBox(height: 10,),

          Container(
            margin: EdgeInsets.fromLTRB(20, 8, 20, 8),

            height: 52,

            child: Center(child: Text("Find tickets",style: TextStyle(color: Colors.white,
            fontWeight: FontWeight.bold),),),

            decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.circular(16),
            ),

          ),

          Container(

            padding: EdgeInsets.all(16),
            child: Row(
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
              ],
            ),
          ),

          Container(
              child:Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Container(
                    margin: EdgeInsets.fromLTRB(10, 7, 10, 10),
                    height: 370,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                    ),

                    child: Column(
                      children: [


                      Container(
                      height: 190,
                      width: 120,
                      margin: EdgeInsets.only(top: 14),
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.all(Radius.circular(16)),
                          image: DecorationImage(
                            image: AssetImage("assets/images/flight.jpg"),
                            fit: BoxFit.fill,
                          )
                      ),
                    ),
                        
                       Container(
                         padding: EdgeInsets.all(16),
                         child: Text("20% discount on bussiness class ticketsform Airline on International",
                         style: TextStyle(
                           fontSize: 17,
                           fontWeight: FontWeight.w400,
                         ),),
                       )
              
                      ],
                    ),



                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 173,
                        width: 143,
                        decoration: BoxDecoration(

                          color: Colors.lightBlueAccent,
                          borderRadius: BorderRadius.circular(16),
                        ),

                        child: Column(
                          children: [

                            Container(
                                padding: EdgeInsets.all(16),
                                child: Center(child: Text("Discount for survey",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold
                            ,fontSize: 19,
                            ),))),

                            SizedBox(height: 5,),

                            Container(
                              padding: EdgeInsets.fromLTRB(16, 0, 16, 16),

                              child: Center(
                                child: Text("Take a survey about our services and take a discount"
                                ,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),),
                              ),
                            )
                          ],
                        ),
                      ),

                      SizedBox(height: 16,),
                      Container(
                        height: 173,
                        width: 143,
                                 padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        
                        child: Center(
                          child: Text("Take Love",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          ),
                        ),
                      )
                    ],
                  )

                ],
              ) ,
            ),

        ],
      ),
    );
  }
}
