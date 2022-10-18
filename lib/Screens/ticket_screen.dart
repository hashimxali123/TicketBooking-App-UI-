import 'package:flutter/material.dart';
import 'package:ticketbooking/Widgets/ticket_widget.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFFeeedf2),

      body: ListView(
      children: [

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 30,),

            Container(
              padding: EdgeInsets.all(16),
               child: Text("Tickets",style:TextStyle(
                 fontWeight: FontWeight.w500,
                 color: Colors.black,
                 fontSize: 43
               ),)
            ),


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

            Container(

              margin: EdgeInsets.fromLTRB(20, 15, 20, 15),
              height: 560,
              width: double.maxFinite,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)
              ),
             color: Colors.white,
            ),

              child: Column(
                children: [

                  //First Row,

                  SizedBox(height: 10,),
                  Container(

                    height: 90,
                    width: double.maxFinite,
                    child: Column
                      (
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("NYC",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17
                                    ),
                                  ),

                                  SizedBox(height: 5,),

                                  Text("New-York",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13
                                    ),)

                                ],
                              ),
                              padding: EdgeInsetsDirectional.all(16),
                            ),

                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                SizedBox(height: 13,),
                                Row(
                                  children: [

                                    Container(
                                      height: 10,
                                      width: 10,
                                      decoration: BoxDecoration(

                                        color:  Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(width: 3,color: Colors.lightBlueAccent),
                                      ),
                                    ),

                                    SizedBox(width: 12,),

                                    RotatedBox(quarterTurns: 9,
                                      child: Icon(Icons.flight,
                                        color: Colors.lightBlueAccent,),
                                    ),

                                    SizedBox(width: 12,),
                                    Container(
                                      height: 10,
                                      width: 10,
                                      decoration: BoxDecoration(

                                        color:  Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(width: 3,color: Colors.lightBlueAccent),
                                      ),
                                    ),

                                  ],
                                ),

                                SizedBox(height: 7,),
                                Text("8H 30M",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17
                                  ),
                                ),

                              ],

                            ),


                            Container(
                              child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("LDN",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17
                                    ),
                                  ),

                                  SizedBox(height: 5,),

                                  Text("London",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13
                                    ),)

                                ],
                              ),
                              padding: EdgeInsetsDirectional.all(16),
                            ),

                          ],
                        ),

                        SizedBox(height: 16,),
                        Expanded(child:
                        Flex(direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(20, (index) => Text("-",
                            style: TextStyle(color: Colors.lightBlueAccent),)),
                        ),
                        ),

                      ],
                    ),
                  ),

                  //Secound Row
                  SizedBox(height: 10,),
                  Container(

                    height: 100,
                    width: double.maxFinite,
                    child: Column
                      (
                      children: [

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("1 May",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17
                                    ),
                                  ),

                                  SizedBox(height: 5,),

                                  Text("Date",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13
                                    ),)

                                ],
                              ),
                              padding: EdgeInsetsDirectional.all(16),
                            ),

                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("08: 00 AM",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17
                                    ),
                                  ),

                                  SizedBox(height: 5,),

                                  Text("Departure time",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13
                                    ),)

                                ],
                              ),
                              padding: EdgeInsetsDirectional.all(16),
                            ),


                            Container(
                              child: Column(
                               crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("23",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17
                                    ),
                                  ),

                                  SizedBox(height: 5,),

                                  Text("November",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13
                                    ),)

                                ],
                              ),
                              padding: EdgeInsetsDirectional.all(16),
                            ),

                          ],
                        ),

                        SizedBox(height: 16,),
                        Expanded(child:
                        Flex(direction: Axis.horizontal,

                          children: List.generate(80, (index) => Text("-",
                            style: TextStyle(color: Colors.lightBlueAccent),)),
                        ),
                        ),

                      ],
                    ),
                  ),

                  //Third row
                  SizedBox(height: 10,),
                  Container(

                    height: 90,
                    width: double.maxFinite,
                    child: Column
                      (
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Flutter DB",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17
                                    ),
                                  ),

                                  SizedBox(height: 5,),

                                  Text("Passenger",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13
                                    ),)

                                ],
                              ),
                              padding: EdgeInsetsDirectional.all(16),
                            ),

                            Spacer(),

                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("5221 364869",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17
                                    ),
                                  ),

                                  SizedBox(height: 5,),

                                  Text("Passport",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13
                                    ),)

                                ],
                              ),
                              padding: EdgeInsetsDirectional.all(16),
                            ),

                          ],
                        ),

                        SizedBox(height: 16,),
                        Expanded(child:
                        Flex(direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(20, (index) => Text("-",
                            style: TextStyle(color: Colors.lightBlueAccent),)),
                        ),
                        ),

                      ],
                    ),
                  ),

                  //Forth   row
                  SizedBox(height: 10,),
                  Container(

                    height: 100,
                    width: double.maxFinite,
                    child: Column
                      (
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("0055 444 77147",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17
                                    ),
                                  ),

                                  SizedBox(height: 5,),

                                  Text("Number of E-ticket",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13
                                    ),)

                                ],
                              ),
                              padding: EdgeInsetsDirectional.all(16),
                            ),

                            Spacer(),

                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("B2SG28",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17
                                    ),
                                  ),

                                  SizedBox(height: 5,),

                                  Text("Booking Code",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13
                                    ),)

                                ],
                              ),
                              padding: EdgeInsetsDirectional.all(16),
                            ),

                          ],
                        ),

                        SizedBox(height: 16,),
                        Expanded(child:
                        Flex(direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(20, (index) => Text("-",
                            style: TextStyle(color: Colors.lightBlueAccent),)),
                        ),
                        ),

                      ],
                    ),
                  ),

                  Container(


                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: 100,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          image: AssetImage("assets/images/barcode.jpg"),
                          fit: BoxFit.fill
                        ),
                      ),
                    ),

                  ),

                ],
              ),

            ),

            SizedBox(height: 16,),

            Row(
              children: [
                SizedBox(width: 16,),
                TicketWidget(),
              ],
            ),

            SizedBox(height: 10,),

          ],
        )
      ],
      ),
    );
  }
}
