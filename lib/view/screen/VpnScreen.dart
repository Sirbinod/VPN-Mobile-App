import 'package:device_shield/appConfig/appTextStyle.dart';
import 'package:device_shield/view/widget/CircularButton.dart';
import 'package:device_shield/view/widget/CustomContainer.dart';
import 'package:device_shield/view/widget/SelectVPN.dart';
import 'package:device_shield/view/widget/SpeedMeter.dart';
import 'package:flutter/material.dart';

class VpnScreen extends StatelessWidget {
  // const VpnScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          height: 15,
        ),
        Column(
          children: [
            Text(
              'Press Button ',
              style: kSecondaryTitle,
              textAlign: TextAlign.center,
            ),
            Text(
              'To Turn On Vpn',
              style: kSecondaryTitle,
              textAlign: TextAlign.center,
            ),
          ],
        ),
        CircularButton(
          icon: Icons.power_settings_new,
        ),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width / 1.5,
            child: CustomContainer(
                borderRadius: 30,
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
                      'connection protected',
                      style: kPrimaryText,
                    ),
                  ],
                )),
          ),
        ),
        SelectVpn(),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width / 1.2,
            child: Row(
              children: [
                Expanded(
                    child: SpeedMetter(
                        icon: Icons.arrow_downward_rounded,
                        title: 'Download',
                        value: '0.0')),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: SpeedMetter(
                    icon: Icons.arrow_upward,
                    title: 'Upload',
                    value: '0.0',
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
