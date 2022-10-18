import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:ticketbooking/Screens/search%20screen.dart';
import 'ticket_screen.dart';
import 'home_screen.dart';


class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  int _currentindex=0;

  void setIndex(int index){

    setState(() {
      _currentindex=index;
    });
  }

  static final List<Widget> _widgetoption=<Widget>[
    
    HomeScreen(),
    SearchScreen(),
    TicketScreen(),
    const Text("Person"),
    
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child:Center(child: _widgetoption[_currentindex]) ,
      ),

      bottomNavigationBar: BottomNavigationBar(

        currentIndex: _currentindex,
        onTap: setIndex,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.grey,
        unselectedItemColor: const Color(0xFF526488),
        type: BottomNavigationBarType.fixed,
        items: const [

          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),label:"home"),


          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),label:"home"),

          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),label:"home"),

          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),label:"home"),
        ],
      ),

    );
  }
}
