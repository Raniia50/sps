import 'package:flutter/material.dart';
import 'package:smart_parking_system/Screens/Welcome/login_screen.dart';
import 'package:smart_parking_system/widgets/original_botton.dart';

class Form_login extends StatefulWidget {
  @override
  _Form_loginState createState() => _Form_loginState();
}

class _Form_loginState extends State<Form_login> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController phoneController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  var phone = "";
  var password = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(children: <Widget>[
                TextFormField(
                  controller: phoneController,
                  decoration: InputDecoration(
                      labelText: 'Enter your Phone',
                      hintText: '00966*********'),
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    String pattern = r'(^(?:[+0]9)?[0-9]{8,12}$)';
                    RegExp regExp = new RegExp(pattern);

                    if (value!.isEmpty) {
                      return "please enter your phone number";
                    }
                    if (!regExp.hasMatch(value)) {
                      return "please enter a valid phone number";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    phoneController.text = value!;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: TextFormField(
                    controller: passwordController,
                    decoration:
                        InputDecoration(labelText: 'Enter your password'),
                    obscureText: true,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter your password";
                      }
                      if (value.length < 8) {
                        return "the password is short must by more then 8 charecter";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      passwordController.text = value!;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Row(
                    children: [
                      FlatButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('forgotPassword');
                          },
                          child: Text('Forget password ?')),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: OriginalBotton(
                    text: 'Login',
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          phone = phoneController.text;
                          password = passwordController.text;
                        });
                      }
                      //Navigator.of(context).pushNamed('Home');
                    },
                    textColor: Colors.black,
                    bgColor: Colors.yellow,
                  ),
                ),
                Text('_______________________ or _______________________'),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: OriginalBotton(
                    text: 'Sign up',
                    onPressed: () {
                      Navigator.of(context).pushNamed('Signup');
                    },
                    textColor: Colors.black,
                    bgColor: Colors.white,
                  ),
                ),
              ]),
            )),
      ],
    );
  }
}

class Form_signup extends StatefulWidget {
  const Form_signup({Key? key}) : super(key: key);

  @override
  _Form_signupState createState() => _Form_signupState();
}

class _Form_signupState extends State<Form_signup> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController firstNameController = new TextEditingController();
  final TextEditingController lastNamedController = new TextEditingController();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController phoneController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  var firstName = "";
  var lastName = "";
  var email = "";
  var phone = "";
  var password = "";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(children: <Widget>[
                TextFormField(
                  controller: firstNameController,
                  decoration: InputDecoration(labelText: 'First name'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "please enter the first name";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    firstNameController.text = value!;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextFormField(
                    controller: lastNamedController,
                    decoration: InputDecoration(labelText: 'Last name'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter the Last name";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      firstNameController.text = value!;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextFormField(
                    controller: phoneController,
                    decoration: InputDecoration(
                        labelText: 'Phone', hintText: '00966*********'),
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      String pattern = r'(^(?:[+0]9)?[0-9]{8,12}$)';
                      RegExp regExp = new RegExp(pattern);

                      if (value!.isEmpty) {
                        return "please enter your phone number";
                      }
                      if (!regExp.hasMatch(value)) {
                        return "please enter a valid phone number";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      phoneController.text = value!;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(labelText: 'Email'),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter your email";
                      }
                      if (!value.contains('@')) {
                        return "invalid email";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      passwordController.text = value!;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextFormField(
                    controller: passwordController,
                    decoration: InputDecoration(labelText: 'password'),
                    obscureText: true,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter your password";
                      }
                      if (value.length < 8) {
                        return "the password is short must by more then 8 charecter";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      passwordController.text = value!;
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  child: OriginalBotton(
                    text: 'Sign up',
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          firstName = firstNameController.text;
                          lastName = lastNamedController.text;
                          email = emailController.text;
                          phone = phoneController.text;
                          password = passwordController.text;
                        });
                      }
                      Navigator.of(context).pushNamed('Home');
                    },
                    textColor: Colors.black,
                    bgColor: Colors.yellow,
                  ),
                ),
                Text('_______________________ or _______________________'),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 7),
                  child: OriginalBotton(
                    text: 'Login',
                    onPressed: () {
                      Navigator.of(context).pushNamed('Login');
                    },
                    textColor: Colors.black,
                    bgColor: Colors.white,
                  ),
                ),
              ]),
            )),
      ],
    );
  }
}

class forgot_password extends StatefulWidget {
  const forgot_password({Key? key}) : super(key: key);

  @override
  _forgot_passwordState createState() => _forgot_passwordState();
}

class _forgot_passwordState extends State<forgot_password> {
  final _formkey = GlobalKey<FormState>();

  final TextEditingController emailController = new TextEditingController();

  var email = "";
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
