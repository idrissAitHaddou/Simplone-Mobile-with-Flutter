// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(
        top: mediaQuery.padding.top,
        bottom: mediaQuery.padding.bottom,
      ),
      child: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 100),
                    Text("Sign In",
                        style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 49, 47, 47),
                          fontWeight: FontWeight.w800,
                          decoration: TextDecoration.none,
                        )),
                    SizedBox(height: 20),
                    Container(
                        width: 250,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Image.asset("assets/images/login.png")),
                    SizedBox(height: 20),
                    Container(
                      width: 270,
                      height: 50,
                      child: const TextField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            hintText: 'Enter your email',
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.blue,
                            )),
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      width: 270,
                      height: 50,
                      child: const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          hintText: 'Enter your password',
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: () => {
                        Navigator.pushNamed(context, "/dashboard")
                      },
                      child: Text("Sign in",
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.w800)),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Colors.blue),
                          padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                          )),
                    )
                  ]),
            ),
            Positioned(
              right: 10,
              top: 20,
              child: Container(
                  width: 120,
                  child: Image.asset("assets/images/youcodeLogo.png")),
            ),
            Positioned(
              left: 0,
              child: Container(
                  width: 120, child: Image.asset("assets/images/circle3.png")),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                  width: 120, child: Image.asset("assets/images/circle4.png")),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: FloatingActionButton(
              onPressed: () => {
                Navigator.pushNamed(context, '/')
              },
              child: Icon(Icons.home),
            ),
            )
          ],
        ),
      ),
    ));
  }
}
