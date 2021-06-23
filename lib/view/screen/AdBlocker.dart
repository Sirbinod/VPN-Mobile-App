import 'package:device_shield/appConfig/appColor.dart';
import 'package:device_shield/appConfig/appTextStyle.dart';
import 'package:device_shield/view/widget/CircularButton.dart';
import 'package:device_shield/view/widget/CustomContainer.dart';
import "package:flutter/material.dart";

class AdBlocker extends StatelessWidget {
  // const AdBlocker({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Text(
                  'Press Button',
                  style: kSecondaryTitle,
                  textAlign: TextAlign.center,
                ),
                Text(
                  'To Turn AdBlock',
                  style: kSecondaryTitle,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            CircularButton(
              icon: Icons.pan_tool,
              gradent: KSecondaryGradent,
            ),
            adBlockerRow(Icons.check_circle_outline_outlined, "Block All",
                Colors.green, () {}),
            adBlockerRow(Icons.more_horiz, "Settings", Colors.white, () {}),
          ],
        ),
      ),
    );
  }

  Container adBlockerRow(
      IconData icon, String title, Color iconColor, Function onClick) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: InkWell(
        onTap: () => onClick(),
        child: CustomContainer(
          padding: EdgeInsets.all(20),
          borderRadius: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                title,
                style: kPrimaryTitle,
              ),
              Icon(
                icon,
                color: iconColor,
                size: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
