// ignore_for_file: sort_child_properties_last, use_build_context_synchronously, sized_box_for_whitespace,

import 'package:flutter/material.dart';
import 'package:flutter_application_quran/constant.dart';
import 'package:flutter_application_quran/screen/main_homepage.dart';
import 'package:flutter_application_quran/screen/surah_about.dart';

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
        leading: const Text(""),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const MainHomepage(),
                ));
              },
              icon: const Icon(Icons.arrow_forward_ios)),
        ],
        backgroundColor: const Color(0xffa4550a),
        title: const Text(
          "سور القران",
          style: TextStyle(fontFamily: 'myfont', fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: const Color.fromARGB(255, 250, 247, 235),
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
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
                elevation: 1,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text(
                  arabicQuran[index]['name'],
                  style: const TextStyle(
                      fontSize: 16,
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
