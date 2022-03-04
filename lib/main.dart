import 'package:flutter/material.dart';
import 'package:smart_parking_system/Screens/Welcome/home_screen.dart';
import 'package:smart_parking_system/Screens/Welcome/login_screen.dart';
import 'package:smart_parking_system/Screens/Welcome/sign_up.dart';
import 'package:smart_parking_system/Screens/Welcome/welcom_screen.dart';
import 'package:smart_parking_system/widgets/auth_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, //تشيل الشريطه الاحمر في الرن
        title: 'Flutter Auth',
        theme: ThemeData(
          inputDecorationTheme: InputDecorationTheme(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(25),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(25),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(25),
            ),
          ),
        ),
        home: WelcomeScreen(),
        routes: {
          'Login': (context) => login_screen(),
          'Signup': (context) => SignUp(),
          'Home': (context) => HomeScreen(),
          'forgotPassword': (context) => forgot_password(),
        });
  }
}
