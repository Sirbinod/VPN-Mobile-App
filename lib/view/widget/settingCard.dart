import 'package:device_shield/appConfig/appColor.dart';
import 'package:device_shield/appConfig/appTextStyle.dart';
import 'package:flutter/material.dart';

class SettingCard extends StatelessWidget {
  const SettingCard({
    @required this.title,
    @required this.body,
    @required this.text,
    @required this.onClick,
  });
  final String title;
  final String body;
  final String text;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFF29282F),
      ),
      child: ExpansionTile(
        backgroundColor: Colors.transparent,
        collapsedBackgroundColor: Colors.transparent,
        title: Text(
          title,
          style: kPrimaryTitle,
        ),
        children: [
          Text(
            body,
            textAlign: TextAlign.justify,
          ),
          Container(
            width: double.infinity,
            child: InkWell(
              onTap: () {},
              child: Text(
                text,
                textAlign: TextAlign.start,
                style: kPrimaryText.copyWith(color: KLinkTextColor),
              ),
            ),
          )
        ],
      ),
    );
  }
}
