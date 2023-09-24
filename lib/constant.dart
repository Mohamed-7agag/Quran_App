// ignore_for_file: non_constant_identifier_names, avoid_print, unused_local_variable

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_quran/main.dart';

List<int> posOfSurah = [
  1,
  2,
  50,
  77,
  106,
  128,
  151,
  177,
  187,
  208,
  221,
  235,
  249,
  255,
  262,
  267,
  282,
  293,
  305,
  312,
  322,
  332,
  342,
  350,
  359,
  367,
  377,
  385,
  396,
  404,
  411,
  415,
  418,
  428,
  434,
  440,
  446,
  453,
  458,
  467,
  477,
  483,
  489,
  496,
  499,
  502,
  507,
  511,
  515,
  518,
  520,
  523,
  526,
  528,
  531,
  534,
  537,
  542,
  545,
  549,
  551,
  553,
  554,
  556,
  558,
  560,
  562,
  564,
  568,
  570,
  572,
  574,
  575,
  577,
  578,
  580,
  582,
  583,
  585,
  586,
  587,
  587,
  589,
  590,
  591,
  591,
  592,
  593,
  594,
  595,
  595,
  596,
  596,
  597,
  597,
  598,
  598,
  599,
  599,
  600,
  600,
  601,
  601,
  601,
  602,
  602,
  602,
  603,
  603,
  603,
  604,
  604,
  604
];

PageController mycontroller = PageController();
bool saved = false;
bool saved1 = false;
int markAyah = 0;
int markpage = pref!.getInt('markpage') ?? 0;
int markSurah = pref!.getInt('markSurah') ?? 0;
String markSurahName = pref!.getString("markSurahName") ?? "";


List arabicQuran = [];

Future readJson() async {
  var response = await rootBundle.loadString("assets/fonts/Quran.json");
  arabicQuran = json.decode(response);
  return arabicQuran;
}