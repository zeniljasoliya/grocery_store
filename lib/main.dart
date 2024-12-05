import 'package:flutter/material.dart';
import 'package:grocery_store/pages/homepage.dart';
import 'package:grocery_store/pages/itempage.dart';
import 'package:grocery_store/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(accentColor: Color),
      routes: {
        "/": (context) => const SplashScrren(),
        "homePage": (context) => const HomePage(),
        "itemPage": (context) => const ItemPage()
      },
      // home: const SplashScrren(),
      debugShowCheckedModeBanner: false,
    );
  }
}
