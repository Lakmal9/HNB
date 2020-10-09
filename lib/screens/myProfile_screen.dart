import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyProfileScreen extends StatefulWidget {

  static const String id = 'myProfile_screen';
  @override
  _MyProfileScreenState createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  List<String> _colors = <String>['', 'red', 'green', 'blue', 'orange'];
  String _color = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile", style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w600, fontSize: 20.0)),
        backgroundColor: Colors.blue.shade900,
      ),
      body: SafeArea(
          top: false,
          bottom: false,
          child: new Form(
              key: _formKey,
              child: new ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                children: <Widget>[
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.person),
                      hintText: 'Enter your first and last name',
                      labelText: 'Name',
                    ),
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.calendar_today),
                      hintText: 'Enter your date of birth',
                      labelText: 'Dob',
                    ),
                    keyboardType: TextInputType.datetime,
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.phone),
                      hintText: 'Enter a phone number',
                      labelText: 'Phone',
                    ),
                    keyboardType: TextInputType.phone,

                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.email),
                      hintText: 'Enter a email address',
                      labelText: 'Email',
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  new FormField(
                    builder: (FormFieldState state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          icon: const Icon(Icons.color_lens),
                          labelText: 'Color',
                        ),
                        isEmpty: _color == '',
                        child: new DropdownButtonHideUnderline(
                          child: new DropdownButton(
                            value: _color,
                            isDense: true,
                            onChanged: (String newValue) {
                              setState(() {
                                //newContact.favoriteColor = newValue;
                                _color = newValue;
                                state.didChange(newValue);
                              });
                            },
                            items: _colors.map((String value) {
                              return new DropdownMenuItem(
                                value: value,
                                child: new Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                  ),
                  new Container(
                      padding: const EdgeInsets.only(left: 40.0, top: 20.0),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(color: Colors.green.shade600)),
                        onPressed: () {
                          //Navigator.pushReplacementNamed(context, DashBoardScreen.id);
                        },
                        color: Colors.green.shade600,
                        textColor: Colors.white,
                        padding: EdgeInsets.all(18.0),
                        child: Text("Submit".toUpperCase(),
                            style: TextStyle(fontSize: 16)),
                      ),
                  ),
                ],
              ))
      ),
    );
  }
}
