// ignore_for_file: prefer_const_constructors, sort_child_properties_last, use_build_context_synchronously, unnecessary_import, unused_import, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_quran/constant.dart';
import 'package:flutter_application_quran/screen/drawer.dart';
import 'package:flutter_application_quran/screen/main_homepage.dart';
import 'package:flutter_application_quran/screen/saved_surah.dart';
import 'package:flutter_application_quran/screen/surah_about.dart';
import 'package:flutter_application_quran/screen/surah_details.dart';

class Homepage3 extends StatefulWidget {
  const Homepage3({super.key});

  @override
  State<Homepage3> createState() => _Homepage3State();
}

class _Homepage3State extends State<Homepage3> {
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
              icon: Icon(Icons.arrow_forward_ios)),
        ],
        backgroundColor: Color(0xffa4550a),
        title: Text(
          "سور القران",
          style: TextStyle(fontFamily: 'myfont', fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Color.fromARGB(255, 250, 247, 235),
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
        child: GridView.builder(
          
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisExtent: 100),
          itemCount: arabicQuran.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => SurahAbout(
                    surahId: arabicQuran[index]['id'] - 1,
                  ),
                ));
              },
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text(
                  arabicQuran[index]['name'],
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'myfont',
                      color: Color(0xffa4550a),
                      fontWeight: FontWeight.bold),
                )),
              ),
            );
          },
        ),
      ),
    );
  }
}
