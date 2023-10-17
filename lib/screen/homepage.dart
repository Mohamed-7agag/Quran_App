// ignore_for_file: sort_child_properties_last, use_build_context_synchronously,  sized_box_for_whitespace,

import 'package:flutter/material.dart';
import 'package:flutter_application_quran/constant.dart';
import 'package:flutter_application_quran/main.dart';
import 'package:flutter_application_quran/screen/drawer.dart';
import 'package:flutter_application_quran/screen/main_homepage.dart';
import 'package:flutter_application_quran/screen/saved_surah.dart';
import 'package:flutter_application_quran/screen/surah_details.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            if (pref!.getInt("markSurah") != null) {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => SurahDetail(
                    surah: markSurah,
                    surahName: markSurahName,
                  ),
                ),
              );
            } else {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const SavedSurah(),
              ));
            }
          },
          icon: const Icon(
            Icons.bookmark_border,
            size: 28,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const MainHomepage(),
                ));
              },
              icon: const Icon(Icons.arrow_forward_ios))
        ],
        backgroundColor: const Color(0xffa4550a),
        title: const Text(
          "القران الكريم",
          style: TextStyle(fontFamily: 'myfont', fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      endDrawer: MyDrawer(),
      body: Container(
        color: const Color(0xfffffdf5),
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: ListView.builder(
          itemCount: arabicQuran.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SurahDetail(
                    surahName: arabicQuran[index]['name'],
                    surah: arabicQuran[index]['id'],
                  ),
                ));
              },
              child: Card(
                elevation: 1,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: ListTile(
                  title: Text(
                    "${arabicQuran[index]['name']}",
                    style: const TextStyle(
                        fontFamily: 'myfont',
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        height: 1.8),
                    textDirection: TextDirection.rtl,
                  ),
                  subtitle: Text(
                    "عدد الأيات : ${arabicQuran[index]['array'].length}",
                    style: const TextStyle(
                        fontFamily: 'myfont',
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                    textDirection: TextDirection.rtl,
                  ),
                  trailing: Container(
                    width: 32,
                    height: 32,
                    child: Center(
                        child: Text(
                      "${arabicQuran[index]['id']}",
                      style: const TextStyle(
                          fontSize: 11,
                          color: Color(0xffa4550a),
                          fontWeight: FontWeight.w700),
                    )),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 253, 245, 238),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color: const Color.fromARGB(26, 228, 128, 34),
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
