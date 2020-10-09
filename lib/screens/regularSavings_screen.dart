import 'package:flutter/material.dart';

class RegularSavingsScreen extends StatefulWidget {
  static const String id = 'regularSavings_screen';
  @override
  _RegularSavingsScreenState createState() => _RegularSavingsScreenState();
}

class _RegularSavingsScreenState extends State<RegularSavingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Regular Savings", style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w600, fontSize: 20.0)),
        actions: [
          Center(child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("", style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w600, fontSize: 20.0)),
          )),
        ],
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5.0,
            ),
            //sfsdfsdf
            Text("Begin your savings journey with an HNB Savings Account and manage"
                " your day-to-day transactions with ease and convenience while earning interest on your daily balance.",
                style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w500, fontSize: 13.0)
            ),
            SizedBox(
              height: 15.0,
            ),
            Text("Benefits", style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w600, fontSize: 15.0)),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Container(
                width: 350,
                height: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Text("* Low minimum opening deposit of Rs.2,000", style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w500, fontSize: 13.0)),
                    Text("* Visa International Debit Card", style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w500, fontSize: 13.0)),
                    Text("* Immediate loan facilities of up to 90% of the balance", style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w500, fontSize: 13.0)),
                    Text("* Access to over 780 self-service machines and 252 customer centres", style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w500, fontSize: 13.0)),
                    Text("* Internet and Mobile Banking access", style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w500, fontSize: 13.0)),
                    Text("* Track your account transactions using monthly e-statements or passbook", style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w500, fontSize: 13.0)),
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
