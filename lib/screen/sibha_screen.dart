// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:flutter_application_quran/screen/main_homepage.dart';

class SibhaScreen extends StatefulWidget {
  const SibhaScreen({super.key});

  @override
  State<SibhaScreen> createState() => _SibhaScreenState();
}

class _SibhaScreenState extends State<SibhaScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text(""),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => MainHomepage(),
                ));
              },
              icon: Icon(Icons.arrow_forward_ios))
        ],
        backgroundColor: Color(0xffa4550a),
        title: Text(
          "المسبحة",
          style: TextStyle(
              fontFamily: 'myfont',
              fontSize: 25,
              fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(top: 120),
        color: Color(0xfffffdf5),
        child: InkWell(
          onTap: () {
            setState(() {
              counter++;
            });
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      counter = 0;
                    });
                  },
                  icon: Icon(
                    Icons.restart_alt,
                    size: 50,
                    color: Color(0xffa4550a),
                  )),
              SizedBox(
                height: 80,
              ),
              Container(
                width: 220,
                height: 220,
                padding: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(500),
                  border: Border.all(color: Color(0xffa4550a), width: 1.2),
                ),
                child: Center(
                    child: Text(
                  "${counter}",
                  style: TextStyle(
                    fontFamily: 'myfont',
                    fontSize: 80,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffa4550a),
                  ),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
