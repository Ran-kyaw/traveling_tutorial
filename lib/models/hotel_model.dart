class Hotel{
  String? imageUrl;
  String? name;
  String? address;
  int? price;

  Hotel({
    this.imageUrl,
    this.name,
    this.address,
    this.price
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: "assets/images/hotel_one.png",
    name: "Hotel 0",
    address: "404 Great St",
    price: 175
  ),
  Hotel(
    imageUrl: "assets/images/hotel_two.png",
    name: "Hotel 1",
    address: "404 Great St",
    price: 300
  ),
  Hotel(
    imageUrl: "assets/images/hotel_three.png",
    name: "Hotel 2",
    address: "404 Great St",
    price: 350
  ),
  Hotel(
    imageUrl: "assets/images/hotel_four.png",
    name: "Hotel 3",
    address: "404 Great St",
    price: 450
  ),
  Hotel(
    imageUrl: "assets/images/hotel_five.png",
    name: "Hotel 4",
    address: "404 Great St",
    price: 500
  ),
  Hotel(
    imageUrl: "assets/images/hotel_six.png",
    name: "Hotel 5",
    address: "404 Great St",
    price: 700
  ),
];