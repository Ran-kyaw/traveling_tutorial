import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/hotel_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HotelCarousel extends StatelessWidget {
  const HotelCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return  ////////column
          Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Exclusive Hotels",
                  style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5),
                ),
                GestureDetector(
                  onTap: () => print("See All"),
                  child: Text("See All",
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Color.fromARGB(135, 45, 160, 189),
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0)),
                )
              ],
            ),
          ),

          SizedBox(height: 20,),
          
          Container(
            height: 300.0,
          
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: hotels.length,
                itemBuilder: (BuildContext context, int index) {
                Hotel hotel= hotels[index];

                  /////////TextContainer
                  return Container(
                    margin: EdgeInsets.all(10),
                    width: 240.0,       
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Positioned(
                          bottom: 15,
                          child: Container(
                            height: 120,
                            width: 240,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                               
                                children: [
                                  Text(
                                    "${hotel.name}",
                                    style: TextStyle(
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 1.2),
                                  ),
                                  SizedBox(height: 2.0,),
                                  Text(
                                    "${hotel.address}",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(height: 2.0,),
                                  Text("\$${hotel.price} / night",style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600
                                  ),)
                                ],
                              ),
                            ),
                          ),
                        ),

                        /////nextContainer Image
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0.0, 2.0),
                                    blurRadius: 6.0)
                              ]),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                              height: 180,
                              width: 230.0,
                              image: AssetImage("${hotel.imageUrl}"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      );
  }
}