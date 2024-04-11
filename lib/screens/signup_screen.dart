import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mrec_consultance/screens/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isHidden = true;
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/images/signup.jpg',
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.only(
                top: 400, left: 20, right: 20, bottom: 20),
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'SIGN UP',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Enter The Details',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                  // icon: Icon(
                                  //   Icons.person,
                                  //   color: Colors.white,
                                  // ),
                                  labelText: 'Email',
                                  hintText: 'Enter your Email',
                                  hintStyle: TextStyle(
                                      color: Colors.white54, fontSize: 15),
                                  labelStyle: TextStyle(color: Colors.white),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(color: Colors.white),
                              obscureText: false,
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                  // icon: Icon(
                                  //   Icons.person,
                                  //   color: Colors.white,
                                  // ),
                                  labelText: 'Display Name',
                                  hintText: 'Enter your Display Name',
                                  hintStyle: TextStyle(
                                      color: Colors.white54, fontSize: 15),
                                  labelStyle: TextStyle(color: Colors.white),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(color: Colors.white),
                              obscureText: false,
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                  // icon: Icon(
                                  //   Icons.person,
                                  //   color: Colors.white,
                                  // ),
                                  labelText: 'Password',
                                  hintText: 'Enter your Password',
                                  hintStyle: TextStyle(
                                      color: Colors.white54, fontSize: 15),
                                  labelStyle: TextStyle(color: Colors.white),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(color: Colors.white),
                              obscureText: false,
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                  // icon: Icon(
                                  //   Icons.person,
                                  //   color: Colors.white,
                                  // ),
                                  labelText: 'Confirm Password',
                                  hintText: 'Enter your Password',
                                  hintStyle: TextStyle(
                                      color: Colors.white54, fontSize: 15),
                                  labelStyle: TextStyle(color: Colors.white),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(color: Colors.white),
                              obscureText: false,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Do you Already have an account ?',
                                  style: TextStyle(
                                      color: Color.fromARGB(234, 255, 255, 255),
                                      fontSize: 15),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => LoginScreen(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'LOGIN',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.underline,
                                        decorationColor: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Submit',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18),
                                    ),
                                    backgroundColor:
                                        Color.fromARGB(255, 206, 143, 138),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
