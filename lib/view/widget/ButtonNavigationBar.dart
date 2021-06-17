import 'package:device_shield/appConfig/appColor.dart';
import 'package:device_shield/view/widget/CustomContainer.dart';
import 'package:flutter/material.dart';

class ButtonNavigationBar extends StatelessWidget {
  final int activeScreen;
  final Function toggleScreen;

  const ButtonNavigationBar(
      {@required this.activeScreen, @required this.toggleScreen});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10, left: 20, right: 20),
      width: MediaQuery.of(context).size.width / 1.1,
      height: 70,
      child: CustomContainer(
          borderRadius: 30,
          padding: EdgeInsets.all(8),
          child: Row(
            children: [
              Expanded(
                child: IconButton(
                  onPressed: () => toggleScreen(0),
                  icon: Icon(
                    Icons.public,
                    color: activeScreen == 0
                        ? KPrimaryGreen
                        : Colors.white.withOpacity(0.7),
                  ),
                ),
              ),
              Expanded(
                child: IconButton(
                  onPressed: () => toggleScreen(1),
                  icon: Icon(
                    Icons.pan_tool,
                    color: activeScreen == 1
                        ? KPrimaryGreen
                        : Colors.white.withOpacity(0.7),
                  ),
                ),
              ),
              Expanded(
                child: IconButton(
                  onPressed: () => toggleScreen(2),
                  icon: Icon(
                    Icons.settings,
                    color: activeScreen == 2
                        ? KPrimaryGreen
                        : Colors.white.withOpacity(0.7),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
