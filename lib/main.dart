import 'package:flutter/material.dart';
import 'package:interface_app/screens/dashBoard_screen.dart';
import 'package:interface_app/screens/exgangeRates_screen.dart';
import 'package:interface_app/screens/findUs_screen.dart';
import 'package:interface_app/screens/loading_screen.dart';
import 'package:interface_app/screens/login_screen.dart';
import 'package:interface_app/screens/myProfile_screen.dart';
import 'package:interface_app/screens/ourProducts_screen.dart';
import 'package:interface_app/screens/ourServices_screen.dart';
import 'package:interface_app/screens/regularSavings_screen.dart';
import 'package:interface_app/screens/savings_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          initialRoute: LoadingScreen.id,
          routes: <String, WidgetBuilder>{
            LoadingScreen.id: (context) => LoadingScreen(),
            LoginScreen.id: (context) => LoginScreen(),
            DashBoardScreen.id: (context) => DashBoardScreen(),
            OurServicesScreen.id: (context) => OurServicesScreen(),
            OurProductsScreen.id: (context) => OurProductsScreen(),
            MyProfileScreen.id: (context) => MyProfileScreen(),
            SavingsScreen.id: (context) => SavingsScreen(),
            FindUsScreen.id: (context) => FindUsScreen(),
            RegularSavingsScreen.id: (context) => RegularSavingsScreen(),
            ExchangeRatesScreen.id: (context) => ExchangeRatesScreen()
          },

    );
  }
}


