import 'package:device_shield/appConfig/appColor.dart';
import 'package:device_shield/view/screen/AdBlocker.dart';
import 'package:device_shield/view/screen/Setting.dart';
import 'package:device_shield/view/screen/VpnScreen.dart';
import 'package:device_shield/view/widget/ButtonNavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Home extends StatefulWidget {
  static const routeName = "/home";
  // const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var activeScreen = 0;
  List<Widget> widgets = [VpnScreen(), AdBlocker(), Setting()];
  void toggleActiveScreen(int index) {
    setState(() {
      activeScreen = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundColor,
      body: widgets[activeScreen],
      bottomNavigationBar: ButtonNavigationBar(
        activeScreen: activeScreen,
        toggleScreen: toggleActiveScreen,
      ),
    );
  }

  Future<InitializationStatus> _initGoogleMobileAds() {
    return MobileAds.instance.initialize();
  }
}
