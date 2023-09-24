// ignore_for_file: prefer_const_constructors, sort_child_properties_last, use_build_context_synchronously, unnecessary_import, unused_import, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_quran/constant.dart';
import 'package:flutter_application_quran/main.dart';
import 'package:flutter_application_quran/screen/drawer.dart';
import 'package:flutter_application_quran/screen/main_homepage.dart';
import 'package:flutter_application_quran/screen/saved_surah.dart';
import 'package:flutter_application_quran/screen/surah_details.dart';
import 'package:flutter_application_quran/screen/surah_image.dart';

class Homepage2 extends StatefulWidget {
  const Homepage2({super.key});

  @override
  State<Homepage2> createState() => _Homepage2State();
}

class _Homepage2State extends State<Homepage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => MainHomepage(),
                ));
              },
              icon: Icon(Icons.arrow_forward_ios))
        ],
        leading: IconButton(
          onPressed: () {
            if (pref!.getInt("markpage") != null) {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => SurahImage(
                    surahImagePos: markpage,
                  ),
                ),
              );
            } else {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => SurahImage(surahImagePos: 20),
              ));
            }
          },
          icon: Icon(
            Icons.bookmark_border,
            size: 28,
          ),
        ),
        backgroundColor: Color(0xffa4550a),
        title: Text(
          "القران الكريم",
          style: TextStyle(fontFamily: 'myfont', fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      endDrawer: MyDrawer(),
      body: Container(
        color: Color(0xfffffdf5),
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
        child: ListView.builder(
          itemCount: arabicQuran.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SurahImage(
                    surahImagePos: posOfSurah[index],
                  ),
                ));
              },
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: ListTile(
                  title: Text(
                    "${arabicQuran[index]['name']}",
                    style: TextStyle(
                        fontFamily: 'myfont',
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        height: 1.8),
                    textDirection: TextDirection.rtl,
                  ),
                  subtitle: Text(
                    "عدد الأيات : ${arabicQuran[index]['array'].length}",
                    style: TextStyle(
                        fontFamily: 'myfont',
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                    textDirection: TextDirection.rtl,
                  ),
                  trailing: Container(
                    width: 32,
                    height: 32,
                    child: Center(
                        child: Text(
                      "${arabicQuran[index]['id']}",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xffa4550a),
                          fontWeight: FontWeight.w700),
                    )),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 253, 245, 238),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color: Color.fromARGB(26, 228, 128, 34),
                        )),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
