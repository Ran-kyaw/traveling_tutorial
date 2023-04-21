
import 'package:flutter_application_1/Pages/home.dart';
import 'package:flutter_application_1/sla/start.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String splashScreen = "/splash-page";
  static const String initial = "/";
  static const String bookMark = "book-page";

  static String getSplashScreen() => '$splashScreen';
  static String getInitial() => '$initial';

  static List<GetPage> routes = [
    GetPage(name: splashScreen, page: () => SplashScreen()),
    GetPage(name: initial, page: () => MyHomePage())
  ];
}
