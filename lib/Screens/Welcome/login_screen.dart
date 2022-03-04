import 'package:flutter/material.dart';
import 'package:smart_parking_system/widgets/auth_form.dart';
import 'package:smart_parking_system/widgets/original_botton.dart';

//enum AuthType { Login, Signup }

class login_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.37,
            decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                )),
          ),
          SingleChildScrollView(
            child: Column(children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Text(
                  'Welcome back',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 120),
                child: Form_login(),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
