// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      color: Colors.white,
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text("Your welcome from simplone website",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 49, 47, 47),
                            decoration: TextDecoration.none,
                          )),
                      SizedBox(height: 10),
                      Text("can you sign in now",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 49, 47, 47),
                            decoration: TextDecoration.none,
                          )),
                      SizedBox(height: 10)
                    ],
                  )),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Image.asset("assets/images/bg.png")),
              ElevatedButton(
                onPressed: () => {
                  Navigator.pushNamed(context, '/login')
                },
                child: Text("Login",
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
                width: 120, child: Image.asset("assets/images/circle1.png")),
          ),
          Positioned(
            bottom: 0,
            child: Container(
                width: 120, child: Image.asset("assets/images/circle2.png")),
          )
        ],
      ),
    ));
  }
}
