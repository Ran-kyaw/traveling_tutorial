import 'activity_model.dart';

class  Destination{
  String? imageUrl;
  String? city;
  String? country;
  String? description;

  List<Activity>? activities;

  Destination({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
    this.activities
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: "assets/images/three.png",
    name:"St.Mark's Basilica",
    type:"Sightseeing Tour",
    startTimes: ['9:00 am' , '11:00 am'],
    rating:5,
    price:30
  ),
   Activity(
    imageUrl: "assets/images/hotel_two.png",
    name:"Walking Tour and Gonadola Ride",
    type:"Sightseeing Tour",
    startTimes: ['10:00 am' , '1:00 pm'],
    rating:3,
    price:45
  ),
  Activity(
    imageUrl: "assets/images/home.png",
    name:"Murano and Burano Tour",
    type:"Sightseeing Tour",
    startTimes: ['1:00 pm' , '4:00 pm'],
    rating:4,
    price:50
  )
];

List<Destination>destinations = [
 Destination(
  imageUrl: "assets/images/two.png",
  city: "New Dehi",
  country: "India",
  description: "Vist New Dehi for an amazing and unforgettable adventure",
  activities: activities,
 ),

 Destination(
  imageUrl: "assets/images/one.png",
  city: "Sittwe",
  country: "Arakan",
  description: "Vist Sittwe for an amazing and unforgettable adventure",
  activities: activities,
 ),

 Destination(
  imageUrl: "assets/images/three.png",
  city: "Venice",
  country: "Italy",
  description: "Vist Venice for an amazing and unforgettable adventure",
  activities: activities,
 ),

 Destination(
  imageUrl: "assets/images/four.png",
  city: "Paris",
  country: "France",
  description: "Vist Paris for an amazing and unforgettable adventure",
  activities: activities,
 ),

 Destination(
  imageUrl: "assets/images/five.png",
  city: "Sao Paulo",
  country: "Brazil",
  description: "Vist Sao Paulo for an amazing and unforgettable adventure",
  activities: activities,
 ),


];