import 'package:flutter/material.dart';
import 'package:interface_app/screens/dashBoard_screen.dart';

class LoginScreen extends StatefulWidget {

  static const String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xFFE3A934),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 160.0),
              Hero(
                  tag: "eee",
                  child: Image.asset(
                    'Images/133.png',
                    height: 100.0,
                    width: 100.0,
                  ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(10.0),
                      ),
                    ),
                    filled: true,
                    hintStyle: new TextStyle(color: Colors.grey[800]),
                    hintText: "User Name",
                    fillColor: Colors.white70
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              TextField(
                decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(10.0),
                      ),
                    ),
                    filled: true,
                    hintStyle: new TextStyle(color: Colors.grey[800]),
                    hintText: "Password",
                    fillColor: Colors.white70),
              ),
              SizedBox(height: 20.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.green.shade600)),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, DashBoardScreen.id);
                    },
                    color: Colors.green.shade600,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(18.0),
                    child: Text("SIGN IN".toUpperCase(),
                        style: TextStyle(fontSize: 14)),
                  ),
                  SizedBox(height: 5.0),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.blue.shade900)),
                    onPressed: () {},
                    color: Colors.blue.shade900,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(18.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'Images/facebook.png',
                          height: 15.0,
                          width: 15.0,
                        ),
                        Text("Connect with Facebook",
                            style: TextStyle(fontSize: 14)),
                      ],
                    ),
                  ),
                  SizedBox(height: 70.0),
                  Center(
                    child: Text("Forgot Your Password ?",
                        style: TextStyle(fontSize: 14)),
                  ),
                  SizedBox(height: 70.0),
                  Center(
                    child: Text("Don't you have an Account? Signup",
                        style: TextStyle(fontSize: 14)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
