import 'package:flutter/material.dart';
import 'package:smart_parking_system/widgets/auth_form.dart';
import 'package:smart_parking_system/widgets/original_botton.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.26,
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
                padding: const EdgeInsets.only(top: 150, left: 10),
                child: Text(
                  'Create your account',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Form_signup(),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
