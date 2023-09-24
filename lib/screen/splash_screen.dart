// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sized_box_for_whitespace

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_quran/screen/main_homepage.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => MainHomepage(),
      ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Color(0xffa4550a),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [Container(
              width: 110,
              child: Image.asset("assets/images/logo1.png",fit: BoxFit.cover,)),
              SizedBox(
              height: 20,
              ),
              Text("القران الكريم",style: TextStyle(fontFamily: 'myfont',fontSize: 32,fontWeight: FontWeight.bold,color: Colors.white),),],
              )
            ],
          )),
    );
  }
}
