// ignore_for_file: prefer_const_constructors, override_on_non_overriding_member, library_private_types_in_public_api, unused_import, avoid_print, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Breif extends StatelessWidget {
  final Map<String, dynamic> breif;
  
  const Breif(this.breif);
  
    @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Breif details"),
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            CircleAvatar(
                backgroundImage: AssetImage("assets/images/profile.jfif")),
            SizedBox(
              width: 5,
            )
          ],
        ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            padding: EdgeInsets.all(17),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(breif["image"],
                                width: 50, height: 50, fit: BoxFit.cover),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  breif["title"],
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                                Text(breif["title"]),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ]),
                SizedBox(height: 18),
                Text("Contexte du projet", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
                SizedBox(height: 12),
                Text(breif["description"]),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}