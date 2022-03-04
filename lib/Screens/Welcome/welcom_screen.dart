// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:smart_parking_system/widgets/original_botton.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Image.asset('assets/images/homep.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child:
                    Text('Find your Parking', style: TextStyle(fontSize: 25)),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 35,
                ),
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * 0.32,
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          )),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 20),
                          child: OriginalBotton(
                            text: 'Login',
                            onPressed: () {
                              Navigator.of(context).pushNamed('Login');
                            },
                            textColor: Colors.black,
                            bgColor: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: OriginalBotton(
                            text: 'Sign up',
                            onPressed: () {
                              Navigator.of(context).pushNamed('Signup');
                            },
                            textColor: Colors.black,
                            bgColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
