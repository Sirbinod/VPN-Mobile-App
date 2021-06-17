import 'package:device_shield/appConfig/appTextStyle.dart';
import 'package:device_shield/view/widget/CustomContainer.dart';
import 'package:flutter/material.dart';

class SelectVpn extends StatelessWidget {
  // const SelectVpn({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width / 1.2,
        child: CustomContainer(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Los Angleles',
                    style: kCaptionTheme,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
