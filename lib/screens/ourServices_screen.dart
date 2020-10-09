import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:interface_app/screens/exgangeRates_screen.dart';
import 'package:interface_app/screens/findUs_screen.dart';
import 'package:interface_app/screens/ourProducts_screen.dart';

class OurServicesScreen extends StatefulWidget {

  static const String id = 'ourServices_screen';

  @override
  _OurServicesScreenState createState() => _OurServicesScreenState();
}

class _OurServicesScreenState extends State<OurServicesScreen> {

  var namesOfServices = ["Mobile Banking", "Promotions", "Our Products", "Find US", "Exchange Rates", "Stock Updates", "Loan Calculator", "FAQ"];
  var iconsOfServices = [Icons.mobile_screen_share, Icons.account_balance, Icons.assignment, Icons.add_location, Icons.attach_money, Icons.insert_chart, Icons.panorama_vertical, Icons.youtube_searched_for];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Our Services", style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w600, fontSize: 20.0)),
          actions: [
            Center(child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("", style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w600, fontSize: 20.0)),
            )),
          ],
          backgroundColor: Colors.blue.shade900,
        ),

        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
                    GridView.builder(
                      primary: false,
                      padding: EdgeInsets.all(10.0),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: 8,
                      gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 3.0,
                          mainAxisSpacing: 3.0,
                          crossAxisCount: 2),
                      itemBuilder: (BuildContext context, int index) {
                        //if (index < 50)
                        return GestureDetector(
                            onTap: () {
                              if(index==2){
                                Navigator.pushNamed(context, OurProductsScreen.id);
                              }else if(index==4){
                                Navigator.pushNamed(context, ExchangeRatesScreen.id);
                              }else if(index==3){
                                Navigator.pushNamed(context, FindUsScreen.id);
                              }
                            },
                            child: Column(
                              children: <Widget>[
                                Flexible(
                                  child: Container(
                                    height: 200.0,
                                    width: 200.0,
                                    child: Card(
                                        elevation: 3.0,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(13.0)),
                                        child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Icon(iconsOfServices[index], size: 40, color: Colors.blue.shade800),
                                              SizedBox(
                                                height: 10.0,
                                              ),
                                              Text(namesOfServices[index],  style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w500, fontSize: 16.0)),
                                            ]
                                        )
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                      },
                    ),
              // ClipPath(
              //   clipper: WaveClipperTwo(flip: true, reverse: true),
              //   child: Container(
              //     height: 100,
              //     color: Colors.blue.shade900,
              //   ),
              // ),
            ],
          ),
        )
    );
  }
}
