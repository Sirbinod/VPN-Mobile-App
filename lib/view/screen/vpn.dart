import 'package:device_shield/appConfig/appColor.dart';
import 'package:device_shield/view/widget/cart.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colors.background,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Press the button to turn on  VPN',
                  style: TextStyle(color: Colors.white),
                ),
                ReCard(
                    color: Colors.black54,
                    radius: 20.0,
                    card: Row(children: [
                      Icon(
                        Icons.ac_unit,
                        color: Colors.white,
                      ),
                      Text(
                        'rrart',
                        style: TextStyle(color: Colors.white),
                      )
                    ]))
              ],
            ),
          ),
        ));
  }
}
