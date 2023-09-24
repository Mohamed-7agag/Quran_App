// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_quran/screen/homepage.dart';

class SavedSurah extends StatefulWidget {
  const SavedSurah({super.key});

  @override
  State<SavedSurah> createState() => _SavedSurahState();
}

class _SavedSurahState extends State<SavedSurah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text(""),
        backgroundColor: Color(0xffa4550a),
        title: Text(
          "المحفوظات",
          style: TextStyle(fontFamily: 'myfont', fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => Homepage(),
                ));
              },
              icon: Icon(Icons.arrow_forward_ios)),
        ],
      ),
      body: Center(child: Text("لا يوجد شي",style: TextStyle(fontSize: 25,fontFamily: 'myfont',fontWeight: FontWeight.bold),),),
    );
  }
}