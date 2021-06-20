import 'package:device_shield/appConfig/appColor.dart';
import 'package:device_shield/appConfig/appText.dart';
import 'package:device_shield/appConfig/appTextStyle.dart';
import 'package:device_shield/view/screen/SuscribtionTerms.dart';
import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  // const PrivacyPolicy({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 30,
              width: MediaQuery.of(context).size.width,
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
                  Text('Divice SHild', style: kPrimaryTitle)
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text(
                'Privacy & Policy',
                style: kPrimaryTitle,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: ListView(
              padding: EdgeInsets.all(30),
              children: [
                Text(
                  KLongPrivacy,
                  textAlign: TextAlign.justify,
                  style: kPrimaryText,
                )
              ],
            )),
            Card(
              elevation: 10,
              child: Container(
                color: Color(0xFF22212A),
                height: 100,
                child: InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SubscriptionTerms())),
                  child: Container(
                    height: 50,
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.green,
                          width: 1,
                        )),
                    child: Center(
                      child: Text(
                        'Agree & Continue',
                        style: kSecondaryTitle,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
