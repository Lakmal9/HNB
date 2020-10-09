import 'package:flutter/material.dart';

class ExchangeRatesScreen extends StatefulWidget {
  static const String id = 'exchange_screen';

  @override
  _ExchangeRatesScreenState createState() => _ExchangeRatesScreenState();
}

class _ExchangeRatesScreenState extends State<ExchangeRatesScreen> {
  var imagesOfRates = [
    'Images/13.png',
    'Images/120.png',
    'Images/19.png',
    'Images/114.png',
    'Images/12.png',
  ];
  var namesOfRates = ["AUS", "CAD", "YEN", "USA", "GBT"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Our Products",
            style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w600,
                fontSize: 20.0)),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text("Top Exchanges",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            fontSize: 20.0)),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Card(
                            elevation: 3.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13.0)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  imagesOfRates[1],
                                  height: 100.0,
                                  width: 100.0,
                                ),
                                Text(namesOfRates[1],
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20.0)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Card(
                            elevation: 3.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13.0)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  imagesOfRates[1],
                                  height: 100.0,
                                  width: 100.0,
                                ),
                                Text(namesOfRates[1],
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20.0)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          child: Card(
                            elevation: 3.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13.0)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  imagesOfRates[1],
                                  height: 100.0,
                                  width: 100.0,
                                ),
                                Text(namesOfRates[1],
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20.0)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Card(
                            elevation: 3.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13.0)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  imagesOfRates[1],
                                  height: 100.0,
                                  width: 100.0,
                                ),
                                Text(namesOfRates[1],
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20.0)),
                              ],
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Other Exchanges",
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w600,
                                fontSize: 20.0)),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          height: 250.0,
                          child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            //scrollDirection: Axis.vertical,
                            //shrinkWrap: true,
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return Card(
                                //                           <-- Card widget
                                child: ListTile(
                                  leading: Image.asset(imagesOfRates[index]),
                                  title: Text(namesOfRates[index],
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15.0)),
                                  trailing: Text("1 USD 180.71 LKR",
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15.0)),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
