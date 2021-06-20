import 'package:device_shield/appConfig/appColor.dart';
import 'package:device_shield/appConfig/appText.dart';
import 'package:device_shield/appConfig/appTextStyle.dart';
import 'package:device_shield/view/screen/Home.dart';
import 'package:flutter/material.dart';

class SubscriptionTerms extends StatelessWidget {
  // const SubscriptionTerms({Key? key}) : super(key: key);

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
                  Text(
                    'Device Shild',
                    style: kPrimaryTitle,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text(
                'Subscription terms',
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
                  KSubscriptionTerms,
                  textAlign: TextAlign.justify,
                  style: kPrimaryText,
                )
              ],
            )),
            Card(
              elevation: 10,
              child: Container(
                color: Color(0xFF22212A),
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            height: 50,
                            margin: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.green,
                                  width: 1,
                                )),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Start a 1- Week Free Trial ',
                                  style: kSecondaryTitle,
                                ),
                                RichText(
                                    text: TextSpan(text: "\$ 1.99", children: [
                                  TextSpan(
                                    text: "/ month after",
                                  )
                                ])),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () => Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home())),
                          child: Text(
                            'I already Have Suscribtion',
                            style:
                                kCaptionTheme.copyWith(color: KLinkTextColor),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
