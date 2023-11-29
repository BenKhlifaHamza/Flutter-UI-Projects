import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ui_projects/views/pages/delivery_app_page.dart';
import 'package:ui_projects/views/pages/delivrey_food.dart';
import 'package:ui_projects/views/pages/home_page.dart';
import 'package:ui_projects/views/pages/inspiration_app_page.dart';
import 'package:ui_projects/views/pages/login2_app_page.dart';
import 'package:ui_projects/views/pages/login3_app_page.dart';
import 'package:ui_projects/views/pages/login_app_page.dart';
import 'package:ui_projects/views/pages/party_app_page.dart';
import 'package:ui_projects/views/pages/party_details_page.dart';
import 'package:ui_projects/views/pages/profile_app_page.dart';
import 'package:ui_projects/views/pages/shopping_app_page.dart';
import 'package:ui_projects/views/pages/shopping_details.dart';
import 'package:ui_projects/views/pages/stuhl_app_page.dart';
import 'package:ui_projects/views/pages/trip_app_page.dart';

class RoutesNames {
  static const String inspiration = "inspiration";
  static const String trip = "trip";
  static const String delivery = "delivery";
  static const String deliveryFood = "deliveryFood";
  static const String profile = "profile";
  static const String party = "party";
  static const String partyDetails = "partyDetails";
  static const String stuhl = "stuhl";
  static const String login = "login";
  static const String login2 = "login2";
  static const String login3 = "login3";
  static const String shopping = "shopping";
  static const String shoppingDetails = "shoppingDetails";
}

class GenerateRoutes {
  static Route<dynamic>? _myPageTransition(
      Widget widget, RouteSettings settings) {
    return PageTransition(
      child: widget,
      type: PageTransitionType.bottomToTop,
      duration: const Duration(milliseconds: 500),
      settings: settings,
    );
  }

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesNames.inspiration:
        return _myPageTransition(const InspirationPage(), settings);
      case RoutesNames.trip:
        return _myPageTransition(const TripPage(), settings);
      case RoutesNames.delivery:
        return _myPageTransition(const DeliveryPage(), settings);
      case RoutesNames.deliveryFood:
        return _myPageTransition(const DeliveryFoodPage(), settings);
      case RoutesNames.profile:
        return _myPageTransition(const ProfilePage(), settings);
      case RoutesNames.party:
        return _myPageTransition(const PartyPage(), settings);
      case RoutesNames.partyDetails:
        return _myPageTransition(const PartyDetailsPage(), settings);
      case RoutesNames.stuhl:
        return _myPageTransition(const StuhlPage(), settings);
      case RoutesNames.login:
        return _myPageTransition(const LoginPage(), settings);
      case RoutesNames.login2:
        return _myPageTransition(const Login2Page(), settings);
      case RoutesNames.login3:
        return _myPageTransition(const Login3Page(), settings);
      case RoutesNames.shopping:
        return _myPageTransition(const ShoppingPage(), settings);
      case RoutesNames.shoppingDetails:
        return MaterialPageRoute(
            builder: (context) => const ShoppingDetailsPage(),
            settings: settings);
      default:
        return MaterialPageRoute(builder: (_) => const HomePage());
    }
  }
}
