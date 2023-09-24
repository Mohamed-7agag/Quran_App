// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_quran/constant.dart';
import 'package:flutter_application_quran/screen/homepage3.dart';

class SurahAbout extends StatefulWidget {
  final int surahId;
  const SurahAbout({super.key, required this.surahId});

  @override
  State<SurahAbout> createState() => _SurahAboutState();
}

class _SurahAboutState extends State<SurahAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "التفاصيل",
          style: TextStyle(
              fontFamily: 'myfont', fontSize: 22, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Color(0xffa4550a),
        leading: Text(""),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => Homepage3(),
                ));
              },
              icon: Icon(Icons.arrow_forward_ios)),
        ],
      ),
      body: Container(
        color: Color(0xfffffdf5),
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 50,),
            Text(
              "عرض تفاصيل السورة",
              style: TextStyle(
                fontFamily: 'myfont',
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xffa4550a),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "${arabicQuran[widget.surahId]['name']}",
                  style: TextStyle(
                    fontFamily: 'myfont',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffa4550a),
                  ),
                ),
                Text(
                  " : الأسم بالعربية",
                  style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "${arabicQuran[widget.surahId]['name_translation']}",
                  style: TextStyle(
                    fontFamily: 'myfont',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffa4550a),
                  ),
                ),
                Text(
                  " : الأسم بالانجليزية",
                  style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "${arabicQuran[widget.surahId]['array'].length}",
                  style: TextStyle(
                    fontFamily: 'myfont',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffa4550a),
                  ),
                ),
                Text(
                  " : عدد الأيات",
                  style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "${arabicQuran[widget.surahId]['words']}",
                  style: TextStyle(
                    fontFamily: 'myfont',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffa4550a),
                  ),
                ),
                Text(
                  " : عدد الكلمات",
                  style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "${arabicQuran[widget.surahId]['letters']}",
                  style: TextStyle(
                    fontFamily: 'myfont',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffa4550a),
                  ),
                ),
                Text(
                  " : عدد الحروف",
                  style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "${arabicQuran[widget.surahId]['id']}",
                  style: TextStyle(
                    fontFamily: 'myfont',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffa4550a),
                  ),
                ),
                Text(
                  " : ترتيبها",
                  style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "${arabicQuran[widget.surahId]['type']}",
                  style: TextStyle(
                    fontFamily: 'myfont',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffa4550a),
                  ),
                ),
                Text(
                  " : نوعها",
                  style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
