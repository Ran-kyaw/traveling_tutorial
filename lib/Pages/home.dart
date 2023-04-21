import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/hotel_Carousel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'destination_Carousel.dart';

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  int _currentTab =0;
  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.personWalking,
    FontAwesomeIcons.personBiking,
     ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        ///////padding
        padding: EdgeInsets.symmetric(vertical: 30),
        children: [
          Padding(
            /////////padding
            padding: const EdgeInsets.only(left: 20, right: 110),
            child: Text(
              "What would you like to find?",
              //////font size
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),

          //////////////// size box
          SizedBox(
            height: 20.0,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: _icons
                .asMap()
                .entries
                .map(
                  (MapEntry e) => _buildIcon(e.key),
                )
                .toList(),
          ),
        
           //////////////// size box
          SizedBox(
            height: 20.0,
          ),

          ///////DestinationCarousel
          DestinationCarousel(),
           //////////////// size box
          SizedBox(
            height: 20.0,
          ),
          /////hotelCarousel
          HotelCarousel(),
        ],
      )
      ),

      //////////bottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value) {
          setState(() {
            _currentTab = value;
          });
        },
        items: [
          
          BottomNavigationBarItem(
            
            icon: Icon(
              Icons.search,
              size: 30,
            ),
            label:"",
           
          ),
           BottomNavigationBarItem(
            
            icon: Icon(
              Icons.local_pizza,
              size: 30,
            ),
            label:"",
           
          ),
           BottomNavigationBarItem(
            
            icon: CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage("assets/images/seven.png"),
            ),
            label:"",
           
          ),
        ],
      ),
    );
  }

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: (){
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        //////////container height,width
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
            /////////color
            color: _selectedIndex == index ? Color.fromARGB(223, 216, 241, 235) : Color.fromARGB(96, 192, 186, 186),
            borderRadius: BorderRadius.circular(30)),
    
        child: Icon(
          _icons[index],
          ///////iconSize
          size: 25.0,
          ////////iconColor
          color: _selectedIndex == index ? Color.fromARGB(135, 45, 160, 189): Color.fromARGB(255, 32, 31, 31),
        ),
      ),
    );
  }
}
