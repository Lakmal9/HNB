import 'package:flutter/material.dart';
import 'package:interface_app/screens/regularSavings_screen.dart';

class SavingsScreen extends StatefulWidget {

  static const String id = 'savings_screen';

  @override
  _SavingsScreenState createState() => _SavingsScreenState();
}

class _SavingsScreenState extends State<SavingsScreen> {

  var imagesOfOurProducts = ['Images/110.png', 'Images/132.png', 'Images/134.png', 'Images/115.jpg'];
  var namesOfOurProducts = ["Savings", "Credit Cards", "Debit Cards", "Travel Cards"];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: AppBar(
            iconTheme: IconThemeData(
              color: Colors.white, //change your color here
            ),
            title: Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text("Savings", style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w600, fontSize: 20.0)),
                ],
              ),
            ),
            //backgroundColor: colorAppBar,
            bottom: TabBar(
              labelStyle: TextStyle(fontSize: 15.0,fontFamily: 'Roboto'),
              unselectedLabelStyle: TextStyle(fontSize: 13.0,fontFamily: 'Roboto'),
              tabs: [
                Tab(
                  text: "General",
                ),
                Tab(
                  text: "Special",
                ),
                Tab(
                  text: "Foreign",
                ),
                Tab(
                  text: "Business",
                )
              ],
            ),

          ),
        ),
        body: TabBarView(
          children: <Widget>[_general(context), _general(context), _general(context), _general(context)
          ],
        ),
      ),
    );
  }
}

Widget _general(BuildContext context) {

  var imagesOfOurProducts = ['Images/16.jpg', 'Images/18.jpg', 'Images/126.jpg', 'Images/127.jpg'];
  var namesOfOurProducts = ["Regular Savings", "Children's Savings", "Youth Savings", "Senior Citizen Savings"];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child:  Container(
                      child: Card(
                        elevation: 3.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13.0)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              imagesOfOurProducts[0],
                              height: 150.0,
                              width: 200.0,
                            ),
                            Text(namesOfOurProducts[2],  style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w500, fontSize: 20.0)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child:  Container(
                      child: Card(
                        elevation: 3.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13.0)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              imagesOfOurProducts[1],
                              height: 150.0,
                              width: 200.0,
                            ),
                            Text(namesOfOurProducts[1],  style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w500, fontSize: 20.0)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child:  Container(
                      child: Card(
                        elevation: 3.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13.0)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              imagesOfOurProducts[2],
                              height: 128.0,
                              width: 200.0,
                            ),
                            Text(namesOfOurProducts[3],  style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w500, fontSize: 20.0)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child:  GestureDetector(
                      child: Container(
                        child: Card(
                          elevation: 3.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13.0)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                imagesOfOurProducts[3],
                                height: 150.0,
                                width: 200.0,
                              ),
                              Text(namesOfOurProducts[0],  style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w500, fontSize: 20.0)),
                            ],
                          ),
                        ),
                      ),
                      onTap: (){
                        Navigator.pushNamed(context, RegularSavingsScreen.id);
                      },
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
