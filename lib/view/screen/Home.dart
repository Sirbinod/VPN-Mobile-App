import 'package:device_shield/appConfig/appColor.dart';
import 'package:device_shield/view/screen/VpnScreen.dart';
import 'package:device_shield/view/widget/ButtonNavigationBar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static const routeName = "/home";
  // const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var activeScreen = 0;
  List<Widget> widgets = [
    VpnScreen(),
  ];
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
}
