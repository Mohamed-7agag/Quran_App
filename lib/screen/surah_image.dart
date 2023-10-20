// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, body_might_complete_normally_nullable, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_application_quran/constant.dart';
import 'package:flutter_application_quran/main.dart';
import 'package:flutter_application_quran/screen/homepage2.dart';
import 'package:get/get.dart';

class SurahImage extends StatefulWidget {
  final int surahImagePos;
  const SurahImage({
    super.key,
    required this.surahImagePos,
  });

  @override
  State<SurahImage> createState() => _SurahImageState();
}

class _SurahImageState extends State<SurahImage> {
  int x = 0;
  bool ok = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "القران الكريم",
          style: TextStyle(fontFamily: 'myfont', fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Color(0xffa4550a),
        leading: IconButton(
          onPressed: () {
            saved1 = true;
            markpage = ok == false ? widget.surahImagePos : 604 - x;
            Get.snackbar("", "",
                duration: Duration(seconds: 1),
                backgroundColor: Colors.black54,
                titleText: Text(
                  "تم بنجاح",
                  style: TextStyle(
                      fontFamily: 'myfont', fontSize: 15, color: Colors.white),
                  textAlign: TextAlign.end,
                ),
                messageText: Text(
                  "حفظ هذة الصفحة",
                  style: TextStyle(
                      fontFamily: 'myfont', fontSize: 14, color: Colors.white),
                  textAlign: TextAlign.end,
                ));
            pref?.setInt("markpage", markpage);
          },
          icon: Icon(
            Icons.bookmark_border,
            size: 28,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => Homepage2(),
                ));
              },
              icon: Icon(Icons.arrow_forward_ios)),
        ],
      ),
      body: Container(
        color: Color(0xfffffdf5),
        width: double.infinity,
        height: double.infinity,
        child: PageView.builder(
          onPageChanged: (value) {
            x = value;
            ok = true;
          },
          controller: mycontroller =
              PageController(initialPage: 604 - widget.surahImagePos),
          itemCount: 604,
          itemBuilder: (context, index) {
            return Image.asset(
              "assets/quran-images/${604 - index}.png",
              fit: BoxFit.fill,
            );
          },
        ),
      ),
    );
  }
}
