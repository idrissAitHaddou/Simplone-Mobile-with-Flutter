// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, sort_child_properties_last, unused_field, prefer_final_fields, use_build_context_synchronously, prefer_interpolation_to_compose_strings

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {

  const Login({super.key});

  @override
  State<Login> createState() => _Login();

}

class _Login extends State<Login> {

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

    signIn(String email,String password) async{
        final response = await http.get(Uri.parse("http://192.168.9.32:3000/users?email="+email+"&password="+password));
        if(response.statusCode == 200 && !(jsonDecode(response.body).isEmpty)){
          Navigator.pushNamed(context, "/dashboard");
        }
        else{ return;}
    }

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
                      child:  TextField(
                        controller: _emailController,
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
                      child: TextField(
                        controller: _passwordController,
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
                         if( _emailController.text.isNotEmpty || _passwordController.text.isNotEmpty){
                           signIn(_emailController.text,_passwordController.text)
                          } 
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
