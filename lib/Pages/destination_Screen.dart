import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/activity_model.dart';
import 'package:flutter_application_1/models/destination_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DestinationScreen extends StatefulWidget {
  final Destination? destination;
  DestinationScreen({this.destination});

  @override
  State<DestinationScreen> createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ////////image container
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 6.0)
                    ]),
                child: Hero(
                  tag: widget.destination!.imageUrl!,
                  child: ClipRRect(
                       borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30.0),bottomRight: Radius.circular(30.0)),
                      child: Image(
                        image: AssetImage("${widget.destination!.imageUrl}"),
                        fit: BoxFit.cover,
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.arrow_back),
                      iconSize: 30,
                      color: Colors.white,
                    ),
                    ///////row
                    Row(
                      children: [
                        IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: Icon(Icons.search),
                          iconSize: 30,
                          color: Colors.white,
                        ),
                        IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: Icon(FontAwesomeIcons.sortAmountDown),
                          iconSize: 25,
                          color: Colors.white,
                        ),
                      ],
                    )
                  ],
                ),
              ),

              ///////
              Positioned(
                left: 20.0,
                bottom: 20.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${widget.destination!.city}",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 27.0,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.2),
                    ),
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.locationArrow,
                          size: 15.0,
                          color: Colors.white70,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "${widget.destination!.country}",
                          style: TextStyle(color: Colors.white70, fontSize: 18),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                right: 20.0,
                bottom: 20.0,
                child: Icon(
                  Icons.location_on,
                  color: Colors.white70,
                  size: 25.0,
                ),
              )
            ],
          ),

///////end image container

          /////start list view
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 10.0,bottom: 15.0),
                itemCount: widget.destination!.activities!.length,
                itemBuilder: (BuildContext context, index) {
                  Activity activity = widget.destination!.activities![index];
                  return Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
                        height: 170.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(100.0, 20.0, 20.0, 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 120.0,
                                    child: Text(
                                      "${activity.name}",
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w600),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                    ),                                       ),
                                  Column(
                                    
                                    children: [
                                      Text(
                                        "\$${activity.price}",
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        "per pax",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                        
                              Text(
                                "${activity.type}",
                                style: TextStyle(color: Colors.grey),
                              ),
                      _buildRatingStars( activity.rating),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 70,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(223, 216, 241, 235),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text("${activity.startTimes![0]}"),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Container(
                                    width: 70,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(223, 216, 241, 235),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text("${activity.startTimes![1]}"),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),

                      ///////image
                     Positioned(
                      left: 20.0,
                      top: 15.0,
                      bottom: 15.0,
                       child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          width: 110.0,
                          image: AssetImage("${activity.imageUrl}"),
                          fit: BoxFit.cover,
                          ),
                       ),
                     )
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }

    _buildRatingStars( int? rating){
     
    
     String stars = "";
     for(int i=0; i<rating!; i++){
      stars +='☻';
     }
     stars.trim();
     return Text(stars);
  }
  
}

