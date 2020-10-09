import 'dart:async';

import 'package:animated_size_and_fade/animated_size_and_fade.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:interface_app/screens/login_screen.dart';

class LoadingScreen extends StatefulWidget {
  static const String id = 'loading_screen';
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> with TickerProviderStateMixin {

  bool isFinish;
  bool isOffline = false;

  @override
  void initState() {
    super.initState();
    isFinish = true;
    loadData();
  }

  Future<Timer> loadData() async {
    return new Timer(Duration(seconds: 3), onDoneLoading);
  }

  onDoneLoading() async {
    Navigator.of(context).pushReplacementNamed(LoginScreen.id);
  }

  @override
  Widget build(BuildContext context) {
    //timeDilation = 5.0;

    return (isOffline) ? new Text("Not connected") : Scaffold(
      //backgroundColor: Color(0xFFE3A934),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
             Hero(
              tag: "eee",
              child: Image.asset(
                'Images/133.png',
                height: 100.0,
                width: 100.0,
              ),
            ),
          SizedBox(height: 20,),
          Text("Welcome to ", style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w800, fontSize: 30.0)),
          Text("HNB Mobile Banking", style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w500, fontSize: 30.0)),
          SizedBox(height: 20,),
          AnimatedSizeAndFade(
            child: isFinish ? _loading() : Navigator.pushNamed(context, LoginScreen.id),
            fadeDuration: const Duration(milliseconds: 300),
            sizeDuration: const Duration(milliseconds: 600),
            vsync: this,
          ),
        ],
      ),
    );
  }

  void setstates() {
    setState(() {
      isFinish = !isFinish;
      print("Come to state");
    });
  }

  Widget _loading() {
    return Container(
      child: SpinKitRing(
        size: 30.0,
        color: Colors.black87,
        lineWidth: 2.0,
      ),
    );
  }



}