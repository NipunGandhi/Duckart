import 'package:duckart/Screens/donation_screen.dart';
import 'package:duckart/Screens/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Screens/homepage.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const MyHomePage(),
        DonationScreen.name: (context) => const DonationScreen(),
        ProfilePage.name: (context) => ProfilePage(),
      },
    );
  }
}
