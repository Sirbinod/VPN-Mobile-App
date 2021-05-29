import 'package:device_shield/appConfig/appColor.dart';
import 'package:device_shield/appConfig/appConstants.dart';
import 'package:device_shield/view/widget/button.dart';
import 'package:device_shield/view/widget/cart.dart';
import 'package:device_shield/view/widget/circlPainter.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var widget;
    return Scaffold(
        backgroundColor: colors.background,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(height: 30.0,),
                Text(
                  'Press the button to turn on  VPN',
                  style: TextStyle(color: Colors.white,fontSize: 20.0),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      primary: Colors.red
                  ),
                  child: Container(
                    width: 200,
                    height: 200,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: Icon(Icons.switch_left_rounded)
                  ),
                  onPressed: () {},
                ),
                ReCard(
                    color: colors.reCard,
                    cardHeight: 50.0,
                    cardWidth: 320.0,
                    radius: 30.0,
                    vPadding: 8.0,
                    hPadding: 10.0,
                    card: Row(children: [
                      SizedBox(
                        width: 20.0,
                      ),
                      Icon(
                        Icons.shield,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'Connection Protected',
                        style: constain.cardSingleHeading,
                      )
                    ])),
                ReCard(
                    color: colors.reCard,
                    cardHeight: 80.0,
                    cardWidth: 350.0,
                    radius: 20.0,
                    vPadding: 15.0,
                    hPadding: 10.0,
                    card: Row(
                      children: [
                        SizedBox(width: 10.0),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "United States",
                                  style: constain.cardBigHeading,
                                )
                              ],
                            ),
                            // SizedBox(height: 6.0),
                            Row(
                              children: [
                                Text(
                                  "Los Angeles",
                                  style: constain.cardsubHeading,
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          width: 80.0,
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.flag,
                              color: Colors.white,
                              size: 50.0,
                            )
                          ],
                        )
                      ],
                    ),),
                Row(children: [Expanded(child: ReCard(color: colors.reCard,
                  cardHeight: 80.0,
                  // cardWidth: 350.0,
                  radius: 20.0,
                  vPadding: 15.0,
                  hPadding: 10.0,
                    card: Row(
                      children: [
                        Column(children: [Icon(Icons.sports_football_rounded, color: Colors.blue,),],),
                        Column(
                          children: [

                            Row(children: [Text('0.0',style: constain.cardBigHeading,),],),
                            Row(children: [Text('Download',style: constain.cardsubHeading,)],),
                          ],
                        ),
                      ],
                    )
                )),Expanded(child: ReCard(color: colors.reCard,
                  cardHeight: 80.0,
                  // cardWidth: 350.0,
                  radius: 20.0,
                  vPadding: 15.0,
                  hPadding: 10.0,card: Row(
                    children: [
                      Column(children: [Icon(Icons.sports_football_rounded, color: Colors.blue,),],),
                      Column(
                        children: [

                          Row(children: [Text('0.0',style: constain.cardBigHeading,),],),
                          Row(children: [Text('Upload',style: constain.cardsubHeading,)],),
                        ],
                      ),
                    ],
                  ),
                ),
                ),
                ],
                ),
                ReCard(
                  color: colors.reCard,
                  cardHeight: 60.0,
                  cardWidth: 350.0,
                  radius: 30.0,
                  vPadding: 17.0,
                  hPadding: 10.0,

                  card:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [Column(children: [Icon(Icons.sports_volleyball,color: Colors.white,)],),
                      Column(children: [Icon(Icons.clean_hands, color: Colors.white)],),
                        Column(children: [Icon(Icons.settings, color: Colors.white)],),
                      ],
                    ),

                )
              ],
            ),
          ),
        ));
  }
}
