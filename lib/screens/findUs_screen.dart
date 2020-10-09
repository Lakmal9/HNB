import 'package:flutter/material.dart';

class FindUsScreen extends StatefulWidget {

  static const String id = 'findUs_screen';
  @override
  _FindUsScreenState createState() => _FindUsScreenState();
}

class _FindUsScreenState extends State<FindUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Find Us", style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w600, fontSize: 20.0)),
        actions: [
          Center(child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("", style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w600, fontSize: 20.0)),
          )),
        ],
        backgroundColor: Colors.blue.shade900,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.search),
                      SizedBox(width: 8),
                      Expanded(
                        child: TextField(

                          decoration: InputDecoration(
                            hintText: "Search",
                            border: InputBorder.none,
                          ),
                          onChanged: (value) {
                            setState(() {
                              // hasSearchEntry = value.isNotEmpty;
                            });
                          },
                        ),
                      ),
                      SizedBox(width: 8),
                     // GestureDetector(
                     //    child: Icon(Icons.clear),
                     //    onTap: () {
                     //    },
                     //  )
                    ],
                  ),
              ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7)),
                        child: Image.asset(
                          'Images/map.jpeg',
                        ),
                      ),
                    ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 75.0,
                      width: 190.0,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.blue.shade800,
                            ),
                            SizedBox(width: 8),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Head Office", style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w600, fontSize: 15.0, color: Colors.blue.shade800)),
                                Text("479 T. B. Jayah Mawatha,", style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w500, fontSize: 13.0)),
                                Text("Colombo 01000", style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w500, fontSize: 13.0)),

                              ],
                            ),
                          ],
                        )
                      ),
                    ),
                    Container(
                      height: 75.0,
                      width: 185.0,
                      child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                  Icons.location_on,
                                  color: Colors.orange.shade800
                              ),
                              SizedBox(width: 8),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("HNB PLC", style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w600, fontSize: 15.0, color: Colors.orange.shade800)),
                                  Text("B263, ", style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w500, fontSize: 13.0)),
                                  Text("Sri J'pura Kotte", style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w500, fontSize: 13.0)),

                                ],
                              ),
                            ],
                          )
                      ),
                    ),
                  ],
                ),
              ),
            ),

                ],
        ),
      )

    );
  }
}
