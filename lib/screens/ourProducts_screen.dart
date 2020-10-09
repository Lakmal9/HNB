import 'package:flutter/material.dart';
import 'package:interface_app/screens/myProfile_screen.dart';
import 'package:interface_app/screens/savings_screen.dart';

class OurProductsScreen extends StatefulWidget {
  static const String id = 'ourProducts_screen';
  @override
  _OurProductsScreenState createState() => _OurProductsScreenState();
}

class _OurProductsScreenState extends State<OurProductsScreen> {

  var imagesOfOurProducts = ['Images/110.png', 'Images/132.png', 'Images/134.png', 'Images/115.jpg'];
  var namesOfOurProducts = ["Savings", "Credit Cards", "Debit Cards", "Travel Cards"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Our Products", style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w600, fontSize: 20.0)),

          backgroundColor: Colors.blue.shade900,
        ),

        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                  child:  GestureDetector(
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
                                imagesOfOurProducts[0],
                                height: 200.0,
                                width: 200.0,
                              ),
                              SizedBox(
                                width: 40.0,
                              ),
                              Text(namesOfOurProducts[0],  style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w500, fontSize: 20.0)),
                            ],
                          ),
                        ),
                      ),
                    onTap: (){
                      Navigator.pushNamed(context, SavingsScreen.id);
                    },
                  ),
                ),


              Expanded(
                child:  GestureDetector(
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
                            imagesOfOurProducts[1],
                            height: 200.0,
                            width: 200.0,
                          ),
                          SizedBox(
                            width: 40.0,
                          ),
                          Text(namesOfOurProducts[1],  style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w500, fontSize: 20.0)),
                        ],
                      ),
                    ),
                  ),
                  onTap: (){
                    Navigator.pushNamed(context, SavingsScreen.id);
                  },
                ),
              ),
              Expanded(
                child:  Container(
                  child: Card(
                    elevation: 3.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          imagesOfOurProducts[2],
                          height: 200.0,
                          width: 200.0,
                        ),
                        SizedBox(
                          width: 40.0,
                        ),
                        Text(namesOfOurProducts[2],  style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w500, fontSize: 20.0)),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child:  Container(
                ),
              ),
            ],
          ),
        ),
    );
  }
}

