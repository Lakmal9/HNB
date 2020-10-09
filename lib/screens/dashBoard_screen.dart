import 'package:flutter/material.dart';
import 'package:interface_app/screens/exitConfirm.dart';
import 'package:interface_app/screens/findUs_screen.dart';
import 'package:interface_app/screens/myProfile_screen.dart';
import 'package:interface_app/screens/ourServices_screen.dart';

class DashBoardScreen extends StatefulWidget {

  static const String id = 'dashBoard_screen';

  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {

  var imagesList = ['Images/13.png','Images/120.png','Images/19.png','Images/114.png','Images/12.png',];
  var nameList = ["AUS", "CAD", "YEN", "USA", "GBT"];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: exitAlert(context).onExit,
      child: Scaffold(
        //backgroundColor: Colors.white70,
        appBar: AppBar(
          title: Text("DashBoard", style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w600, fontSize: 20.0)),
          backgroundColor: Colors.blue.shade900,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0)),
                    child: Image.asset(
                        'Images/125.jpg',
                      ),
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.radio_button_checked, color: Colors.blue.shade800,),Icon(Icons.radio_button_checked, color: Colors.blue.shade800,),Icon(Icons.radio_button_checked, color: Colors.blue.shade800,),
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      child: Container(
                        height: 110.0,
                        width: 110.0,
                        child: Card(
                            elevation: 3.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13.0)),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.subject, color: Colors.blue.shade800, size: 30,),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text("Our Services", style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w500, fontSize: 15.0)),
                                ]
                            )
                        ),
                      ),
                      onTap: (){
                        Navigator.pushNamed(context, OurServicesScreen.id);
                      },
                    ),
                    GestureDetector(
                      child: Container(
                        height: 110.0,
                        width: 110.0,
                        child: Card(
                          elevation: 3.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13.0)),
                          child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.account_circle, color: Colors.blue.shade800, size: 30,),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text("My Account", style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w500, fontSize: 15.0)),
                                ]
                            )
                        ),
                      ),
                      onTap: (){
                        Navigator.pushNamed(context, MyProfileScreen.id);
                      },
                    ),
                    GestureDetector(
                      child: Container(
                        height: 110.0,
                        width: 110.0,
                        child: Card(
                          elevation: 3.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13.0)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.location_on, color: Colors.blue.shade800, size: 30,),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text("Find Us", style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w500, fontSize: 15.0)),
                              ]
                          )
                        ),
                      ),
                      onTap: (){
                        Navigator.pushNamed(context, FindUsScreen.id);
                      },
                    ),

                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Exchange Rates", style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w800, fontSize: 20.0)),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  height: 200.0,
                  child: ListView.builder(
                    //scrollDirection: Axis.vertical,
                    //shrinkWrap: true,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Card( //                           <-- Card widget
                              child: ListTile(
                                leading: Image.asset(
                                  imagesList[index]
                                ),
                                title: Text(nameList[index], style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w600, fontSize: 15.0)),
                                trailing: Text("1 USD 180.71 LKR", style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w600, fontSize: 15.0)),
                              ),
                            );
                          },
                        ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
