// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, unused_local_variable, non_constant_identifier_names, unused_import, sized_box_for_whitespace, prefer_spread_collections, unnecessary_string_interpolations, valid_regexps, unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:flutter_application_quran/constant.dart';
import 'package:flutter_application_quran/main.dart';
import 'package:flutter_application_quran/screen/homepage.dart';
import 'package:get/get.dart';

class SurahDetail extends StatefulWidget {
  final int surah;
  final surahName;

  const SurahDetail({super.key, required this.surah, this.surahName});

  @override
  State<SurahDetail> createState() => _SurahDetailState();
}

class _SurahDetailState extends State<SurahDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.surahName,
          style: TextStyle(fontFamily: 'myfont', fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Color(0xffa4550a),
        leading: IconButton(
          onPressed: () {
            saved = true;
            markSurah = widget.surah;
            markSurahName = widget.surahName;
            pref!.setString("markSurahName", markSurahName);
            pref!.setInt("markSurah", markSurah);
            Get.snackbar("", "",
                duration: Duration(seconds: 1),
                backgroundColor: Colors.black54,
                titleText: Text(
                  "تم بنجاح",
                  style: TextStyle(
                      fontFamily: 'myfont', fontSize: 16, color: Colors.white),
                  textAlign: TextAlign.end,
                ),
                messageText: Text(
                  "حفظ هذة السورة",
                  style: TextStyle(
                      fontFamily: 'myfont', fontSize: 16, color: Colors.white),
                  textAlign: TextAlign.end,
                ));
          },
          icon: Icon(Icons.bookmark_border),
        ),
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
      body: Container(
        color: Color(0xfffffdf5),
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(children: [
            widget.surah == "1" || widget.surah == "9"
                ? Text("")
                : Text(
                    "بِسْم اللَّه الرَّحْمن الرَّحِيم",
                    style: TextStyle(
                        fontFamily: 'myfont',
                        fontSize: 30,
                        color: Color(0xffa4550a),
                        fontWeight: FontWeight.bold,
                        height: 1.9),
                  ),
            _convertString(context, arabicQuran[widget.surah - 1]['ar'])
          ]),
        ),
      ),
    );
  }
}

RichText _convertString(BuildContext context, String text) {
  text = text.replaceAll('(', '{');
  text = text.replaceAll(')', '}');
  text = text.replaceAll('0', '٠');
  text = text.replaceAll('1', '١');
  text = text.replaceAll('2', '٢');
  text = text.replaceAll('3', '٣');
  text = text.replaceAll('4', '٤');
  text = text.replaceAll('5', '٥');
  text = text.replaceAll('6', '٦');
  text = text.replaceAll('7', '٧');
  text = text.replaceAll('8', '٨');
  text = text.replaceAll('9', '٩');

  List<String> split = text.split(RegExp("{"));

  List<String> hadiths = split.getRange(1, split.length).fold([], (t, e) {
    var texts = e.split("}");

    if (texts.length > 1) {
      return List.from(t)
        ..addAll(
            ["(${texts.first})", "${e.substring(texts.first.length + 1)}"]);
    }
    return List.from(t)..add("(${texts.first}");
  });

  return RichText(
    textAlign: TextAlign.center,
    text: TextSpan(
      style: TextStyle(
          fontSize: 25,
          color: Colors.black,
          fontFamily: 'myfont',
          height: 1.8,
          fontWeight: FontWeight.w500),
      //style: DefaultTextStyle.of(context).style,
      children: [TextSpan(text: split.first)]..addAll(hadiths
          .map((text) => text.contains("(")
              ? TextSpan(
                  text: text,
                  style: TextStyle(
                      color: Color(0xffa4550a),
                      fontWeight: FontWeight.bold,
                      fontSize: 26))
              : TextSpan(text: text))
          .toList()),
    ),
    textDirection: TextDirection.rtl,
  );
}
