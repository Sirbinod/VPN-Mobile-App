import 'package:device_shield/appConfig/appTextStyle.dart';
import 'package:device_shield/view/widget/CustomContainer.dart';
import 'package:flutter/material.dart';

class SpeedMetter extends StatelessWidget {
  const SpeedMetter(
      {@required this.icon, @required this.title, @required this.value});
  final IconData icon;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      borderRadius: 30,
      child: Row(
        children: [
          Icon(
            icon,
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$value",
                style: kSecondaryTitle,
              ),
              Text(
                title,
                style: kCaptionTheme,
              )
            ],
          )
        ],
      ),
    );
  }
}
