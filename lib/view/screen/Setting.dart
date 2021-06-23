import 'package:device_shield/appConfig/appText.dart';
import 'package:device_shield/appConfig/appTextStyle.dart';
import 'package:device_shield/view/widget/settingCard.dart';
import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  // const Setting({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.shield,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Device Shield",
                  style: kPrimaryTitle,
                )
              ],
            ),
          ),
          SettingCard(
            body: KShortTerms,
            title: "Terms",
            text: "Read full terms and condition",
            onClick: () {},
          ),
          SettingCard(
            title: "Privacy",
            body: KShortPrivacy,
            text: "Read full terms and condition",
            onClick: () {},
          ),
          SettingCard(
            body: KRestoreShort,
            title: "Restore",
            text: "Read full terms and condition",
            onClick: () {},
          ),
        ],
      ),
    );
  }
}
