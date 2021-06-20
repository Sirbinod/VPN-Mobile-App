import 'package:device_shield/appConfig/appColor.dart';
import 'package:device_shield/appConfig/appImage.dart';
import 'package:device_shield/appConfig/appTextStyle.dart';
import 'package:device_shield/view/screen/Home.dart';
import 'package:device_shield/view/screen/TermsOfUse.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SpladhScreen extends StatefulWidget {
  @override
  _SpladhScreenState createState() => _SpladhScreenState();
}

class _SpladhScreenState extends State<SpladhScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    Future.delayed(Duration(seconds: 4), () {
      if (prefs.containsKey('new')) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Home(),
          ),
        );
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TermsOfUse(),
          ),
        );
      }
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundColor,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(KLogoImage),
            SizedBox(
              height: 20,
            ),
            TyperAnimatedTextKit(
              text: ['DEVICE SHIELD'],
              textStyle: kPrimaryTitle.copyWith(letterSpacing: 1, fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
