import 'package:device_shield/helper/ad_helper.dart';
import 'package:device_shield/view/screen/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AdHelper.initialze();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // thi widget it the root in this application

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VPN APP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {},
      home: SpladhScreen(),
    );
  }
}
