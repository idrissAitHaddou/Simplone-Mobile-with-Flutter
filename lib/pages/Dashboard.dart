// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unused_import, override_on_non_overriding_member, avoid_print, library_private_types_in_public_api, unused_local_variable, avoid_function_literals_in_foreach_calls

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<Widget> briefWidgets = [];
  Future<void> getBriefs() async {
    final response = await http.get(Uri.parse('http://192.168.9.32:3000/data'));
    if (response.statusCode == 200) {
      final briefs = jsonDecode(response.body);
      List<Widget> widgets = [];
      briefs.forEach((brief) {
        widgets.add(
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 11),
            padding: EdgeInsets.all(17),
            decoration: BoxDecoration(
              border: Border.all(
                  width: 2, color: Color.fromARGB(255, 161, 211, 220)),
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset("assets/images/flutter.png",
                                width: 50, height: 50, fit: BoxFit.cover),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Column(
                              children: [
                                Text(
                                  "Application Mobile SimplonLine",
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                                Text("Application Mobile SimplonLine"),
                              ],
                            ),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () =>
                            {Navigator.pushNamed(context, '/breif')},
                        // ignore: sort_child_properties_last
                        child: Icon(Icons.remove_red_eye_sharp,
                            color: Colors.blue),
                        style: ButtonStyle(
                            elevation: MaterialStateProperty.all(0),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(horizontal: 1, vertical: 1),
                            )),
                      ),
                    ]),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("03-02-2023"), Text("Touailab Ilyass")],
                ),
              ],
            ),
          ),
        );
      });
      setState(() {
        briefWidgets = widgets;
      });
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  @override
  void initState() {
    super.initState();
    getBriefs();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Dashboard"),
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            CircleAvatar(
                backgroundImage: AssetImage("assets/images/profile.jfif")),
            SizedBox(
              width: 5,
            )
          ],
        ),
        body: Container(
            height: double.infinity,
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(4, 16, 4, 0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 170,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Row(children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset("assets/images/promotion.jfif",
                                width: 170, height: 170, fit: BoxFit.cover),
                          ),
                          Container(
                            width: 220,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text("YouCode Safi 2022 Brendan Eich",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600)),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                      "Promotion 2022 du référentiel développement web et web mobile & CDA à la fabrique de YouCode Safi au Maroc"),
                                ]),
                          )
                        ]),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Column(
                    children: briefWidgets
                      // Container(
                      //   padding: EdgeInsets.all(17),
                      //   decoration: BoxDecoration(
                      //     border: Border.all(
                      //         width: 2,
                      //         color: Color.fromARGB(255, 161, 211, 220)),
                      //     borderRadius: BorderRadius.all(Radius.circular(5)),
                      //   ),
                      //   child: Column(
                      //     children: [
                      //       Row(
                      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //           crossAxisAlignment: CrossAxisAlignment.start,
                      //           children: [
                      //             Row(
                      //               children: [
                      //                 ClipRRect(
                      //                   borderRadius: BorderRadius.circular(8.0),
                      //                   child: Image.asset(
                      //                       "assets/images/flutter.png",
                      //                       width: 50,
                      //                       height: 50,
                      //                       fit: BoxFit.cover),
                      //                 ),
                      //                 Container(
                      //                   margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      //                   child: Column(
                      //                     children: [
                      //                       Text(
                      //                         "Application Mobile SimplonLine",
                      //                         style: TextStyle(
                      //                             fontWeight: FontWeight.w700),
                      //                       ),
                      //                       Text(
                      //                           "Application Mobile SimplonLine"),
                      //                     ],
                      //                   ),
                      //                 ),
                      //               ],
                      //             ),
                      //             ElevatedButton(
                      //               onPressed: () =>
                      //                   {Navigator.pushNamed(context, '/breif')},
                      //               // ignore: sort_child_properties_last
                      //               child: Icon(Icons.remove_red_eye_sharp,
                      //                   color: Colors.blue),
                      //               style: ButtonStyle(
                      //                   elevation: MaterialStateProperty.all(0),
                      //                   backgroundColor:
                      //                       MaterialStateProperty.all(
                      //                           Colors.white),
                      //                   padding: MaterialStateProperty.all(
                      //                     EdgeInsets.symmetric(
                      //                         horizontal: 1, vertical: 1),
                      //                   )),
                      //             ),
                      //           ]),
                      //       SizedBox(height: 12),
                      //       Row(
                      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //         children: [
                      //           Text("03-02-2023"),
                      //           Text("Touailab Ilyass")
                      //         ],
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: 8,
                      // ),
                      // Container(
                      //   padding: EdgeInsets.all(17),
                      //   decoration: BoxDecoration(
                      //     border: Border.all(
                      //         width: 2,
                      //         color: Color.fromARGB(255, 161, 211, 220)),
                      //     borderRadius: BorderRadius.all(Radius.circular(5)),
                      //   ),
                      //   child: Column(
                      //     children: [
                      //       Row(
                      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //           crossAxisAlignment: CrossAxisAlignment.start,
                      //           children: [
                      //             Row(
                      //               children: [
                      //                 ClipRRect(
                      //                   borderRadius: BorderRadius.circular(8.0),
                      //                   child: Image.asset(
                      //                       "assets/images/spring.png",
                      //                       width: 50,
                      //                       height: 50,
                      //                       fit: BoxFit.cover),
                      //                 ),
                      //                 Container(
                      //                   margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      //                   child: Column(
                      //                     children: [
                      //                       Text(
                      //                         "Application Mobile SimplonLine",
                      //                         style: TextStyle(
                      //                             fontWeight: FontWeight.w700),
                      //                       ),
                      //                       Text(
                      //                           "Application Mobile SimplonLine"),
                      //                     ],
                      //                   ),
                      //                 ),
                      //               ],
                      //             ),
                      //             ElevatedButton(
                      //               onPressed: () =>
                      //                   {Navigator.pushNamed(context, '/breif')},
                      //               // ignore: sort_child_properties_last
                      //               child: Icon(Icons.remove_red_eye_sharp,
                      //                   color: Colors.blue),
                      //               style: ButtonStyle(
                      //                   elevation: MaterialStateProperty.all(0),
                      //                   backgroundColor:
                      //                       MaterialStateProperty.all(
                      //                           Colors.white),
                      //                   padding: MaterialStateProperty.all(
                      //                     EdgeInsets.symmetric(
                      //                         horizontal: 1, vertical: 1),
                      //                   )),
                      //             ),
                      //           ]),
                      //       SizedBox(height: 12),
                      //       Row(
                      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //         children: [
                      //           Text("03-02-2023"),
                      //           Text("Touailab Ilyass")
                      //         ],
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: 8,
                      // ),
                      // Container(
                      //   padding: EdgeInsets.all(17),
                      //   decoration: BoxDecoration(
                      //     border: Border.all(
                      //         width: 2,
                      //         color: Color.fromARGB(255, 161, 211, 220)),
                      //     borderRadius: BorderRadius.all(Radius.circular(5)),
                      //   ),
                      //   child: Column(
                      //     children: [
                      //       Row(
                      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //           crossAxisAlignment: CrossAxisAlignment.start,
                      //           children: [
                      //             Row(
                      //               children: [
                      //                 ClipRRect(
                      //                   borderRadius: BorderRadius.circular(8.0),
                      //                   child: Image.asset(
                      //                       "assets/images/angular.png",
                      //                       width: 50,
                      //                       height: 50,
                      //                       fit: BoxFit.cover),
                      //                 ),
                      //                 Container(
                      //                   margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      //                   child: Column(
                      //                     children: [
                      //                       Text(
                      //                         "Application Mobile SimplonLine",
                      //                         style: TextStyle(
                      //                             fontWeight: FontWeight.w700),
                      //                       ),
                      //                       Text(
                      //                           "Application Mobile SimplonLine"),
                      //                     ],
                      //                   ),
                      //                 ),
                      //               ],
                      //             ),
                      //             ElevatedButton(
                      //               onPressed: () =>
                      //                   {Navigator.pushNamed(context, '/breif')},
                      //               // ignore: sort_child_properties_last
                      //               child: Icon(Icons.remove_red_eye_sharp,
                      //                   color: Colors.blue),
                      //               style: ButtonStyle(
                      //                   elevation: MaterialStateProperty.all(0),
                      //                   backgroundColor:
                      //                       MaterialStateProperty.all(
                      //                           Colors.white),
                      //                   padding: MaterialStateProperty.all(
                      //                     EdgeInsets.symmetric(
                      //                         horizontal: 1, vertical: 1),
                      //                   )),
                      //             ),
                      //           ]),
                      //       SizedBox(height: 12),
                      //       Row(
                      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //         children: [
                      //           Text("03-02-2023"),
                      //           Text("Touailab Ilyass")
                      //         ],
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: 8,
                      // ),
                      // Container(
                      //   padding: EdgeInsets.all(17),
                      //   decoration: BoxDecoration(
                      //     border: Border.all(
                      //         width: 2,
                      //         color: Color.fromARGB(255, 161, 211, 220)),
                      //     borderRadius: BorderRadius.all(Radius.circular(5)),
                      //   ),
                      //   child: Column(
                      //     children: [
                      //       Row(
                      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //           crossAxisAlignment: CrossAxisAlignment.start,
                      //           children: [
                      //             Row(
                      //               children: [
                      //                 ClipRRect(
                      //                   borderRadius: BorderRadius.circular(8.0),
                      //                   child: Image.asset(
                      //                       "assets/images/react.png",
                      //                       width: 50,
                      //                       height: 50,
                      //                       fit: BoxFit.cover),
                      //                 ),
                      //                 Container(
                      //                   margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      //                   child: Column(
                      //                     children: [
                      //                       Text(
                      //                         "Application Mobile SimplonLine",
                      //                         style: TextStyle(
                      //                             fontWeight: FontWeight.w700),
                      //                       ),
                      //                       Text(
                      //                           "Application Mobile SimplonLine"),
                      //                     ],
                      //                   ),
                      //                 ),
                      //               ],
                      //             ),
                      //             ElevatedButton(
                      //               onPressed: () =>
                      //                   {Navigator.pushNamed(context, '/breif')},
                      //               // ignore: sort_child_properties_last
                      //               child: Icon(Icons.remove_red_eye_sharp,
                      //                   color: Colors.blue),
                      //               style: ButtonStyle(
                      //                   elevation: MaterialStateProperty.all(0),
                      //                   backgroundColor:
                      //                       MaterialStateProperty.all(
                      //                           Colors.white),
                      //                   padding: MaterialStateProperty.all(
                      //                     EdgeInsets.symmetric(
                      //                         horizontal: 1, vertical: 1),
                      //                   )),
                      //             ),
                      //           ]),
                      //       SizedBox(height: 12),
                      //       Row(
                      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //         children: [
                      //           Text("03-02-2023"),
                      //           Text("Touailab Ilyass")
                      //         ],
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: 8,
                      // ),
                      // Container(
                      //   padding: EdgeInsets.all(17),
                      //   decoration: BoxDecoration(
                      //     border: Border.all(
                      //         width: 2,
                      //         color: Color.fromARGB(255, 161, 211, 220)),
                      //     borderRadius: BorderRadius.all(Radius.circular(5)),
                      //   ),
                      //   child: Column(
                      //     children: [
                      //       Row(
                      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //           crossAxisAlignment: CrossAxisAlignment.start,
                      //           children: [
                      //             Row(
                      //               children: [
                      //                 ClipRRect(
                      //                   borderRadius: BorderRadius.circular(8.0),
                      //                   child: Image.asset(
                      //                       "assets/images/java.png",
                      //                       width: 50,
                      //                       height: 50,
                      //                       fit: BoxFit.cover),
                      //                 ),
                      //                 Container(
                      //                   margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      //                   child: Column(
                      //                     children: [
                      //                       Text(
                      //                         "Application Mobile SimplonLine",
                      //                         style: TextStyle(
                      //                             fontWeight: FontWeight.w700),
                      //                       ),
                      //                       Text(
                      //                           "Application Mobile SimplonLine"),
                      //                     ],
                      //                   ),
                      //                 ),
                      //               ],
                      //             ),
                      //             ElevatedButton(
                      //               onPressed: () =>
                      //                   {Navigator.pushNamed(context, '/breif')},
                      //               // ignore: sort_child_properties_last
                      //               child: Icon(Icons.remove_red_eye_sharp,
                      //                   color: Colors.blue),
                      //               style: ButtonStyle(
                      //                   elevation: MaterialStateProperty.all(0),
                      //                   backgroundColor:
                      //                       MaterialStateProperty.all(
                      //                           Colors.white),
                      //                   padding: MaterialStateProperty.all(
                      //                     EdgeInsets.symmetric(
                      //                         horizontal: 1, vertical: 1),
                      //                   )),
                      //             ),
                      //           ]),
                      //       SizedBox(height: 12),
                      //       Row(
                      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //         children: [
                      //           Text("03-02-2023"),
                      //           Text("Touailab Ilyass")
                      //         ],
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: 8,
                      // ),
                      // Container(
                      //   padding: EdgeInsets.all(17),
                      //   decoration: BoxDecoration(
                      //     border: Border.all(
                      //         width: 2,
                      //         color: Color.fromARGB(255, 161, 211, 220)),
                      //     borderRadius: BorderRadius.all(Radius.circular(5)),
                      //   ),
                      //   child: Column(
                      //     children: [
                      //       Row(
                      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //           crossAxisAlignment: CrossAxisAlignment.start,
                      //           children: [
                      //             Row(
                      //               children: [
                      //                 ClipRRect(
                      //                   borderRadius: BorderRadius.circular(8.0),
                      //                   child: Image.asset(
                      //                       "assets/images/uml.png",
                      //                       width: 50,
                      //                       height: 50,
                      //                       fit: BoxFit.cover),
                      //                 ),
                      //                 Container(
                      //                   margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      //                   child: Column(
                      //                     children: [
                      //                       Text(
                      //                         "Application Mobile SimplonLine",
                      //                         style: TextStyle(
                      //                             fontWeight: FontWeight.w700),
                      //                       ),
                      //                       Text(
                      //                           "Application Mobile SimplonLine"),
                      //                     ],
                      //                   ),
                      //                 ),
                      //               ],
                      //             ),
                      //             ElevatedButton(
                      //               onPressed: () =>
                      //                   {Navigator.pushNamed(context, '/breif')},
                      //               // ignore: sort_child_properties_last
                      //               child: Icon(Icons.remove_red_eye_sharp,
                      //                   color: Colors.blue),
                      //               style: ButtonStyle(
                      //                   elevation: MaterialStateProperty.all(0),
                      //                   backgroundColor:
                      //                       MaterialStateProperty.all(
                      //                           Colors.white),
                      //                   padding: MaterialStateProperty.all(
                      //                     EdgeInsets.symmetric(
                      //                         horizontal: 1, vertical: 1),
                      //                   )),
                      //             ),
                      //           ]),
                      //       SizedBox(height: 12),
                      //       Row(
                      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //         children: [
                      //           Text("03-02-2023"),
                      //           Text("Touailab Ilyass")
                      //         ],
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: 8,
                      // ),
                      ),
                ],
              ),
            )));
  }
}
