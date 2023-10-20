import 'package:flutter/material.dart';
import 'package:flutter_application_quran/constant.dart';
import 'package:flutter_application_quran/screen/homepage3.dart';
import 'package:get/get.dart';

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
        title: const Text(
          "التفاصيل",
          style: TextStyle(
              fontFamily: 'myfont', fontSize: 22, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xffa4550a),
        leading: const Text(""),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const Homepage3(),
                ));
              },
              icon: const Icon(Icons.arrow_forward_ios)),
        ],
      ),
      body: Container(
        color: const Color(0xfffffdf5),
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              "عرض تفاصيل السورة",
              style: TextStyle(
                fontFamily: 'myfont',
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xffa4550a),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "${arabicQuran[widget.surahId]['name']}",
                  style: const TextStyle(
                    fontFamily: 'myfont',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffa4550a),
                  ),
                ),
                const Text(
                  " : الأسم بالعربية",
                  style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "${arabicQuran[widget.surahId]['name_translation']}",
                  style: const TextStyle(
                    fontFamily: 'myfont',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffa4550a),
                  ),
                ),
                const Text(
                  " : الأسم بالانجليزية",
                  style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "${arabicQuran[widget.surahId]['array'].length}",
                  style: const TextStyle(
                    fontFamily: 'myfont',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffa4550a),
                  ),
                ),
                const Text(
                  " : عدد الأيات",
                  style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "${arabicQuran[widget.surahId]['words']}",
                  style: const TextStyle(
                    fontFamily: 'myfont',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffa4550a),
                  ),
                ),
                const Text(
                  " : عدد الكلمات",
                  style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "${arabicQuran[widget.surahId]['letters']}",
                  style: const TextStyle(
                    fontFamily: 'myfont',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffa4550a),
                  ),
                ),
                const Text(
                  " : عدد الحروف",
                  style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "${arabicQuran[widget.surahId]['id']}",
                  style: const TextStyle(
                    fontFamily: 'myfont',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffa4550a),
                  ),
                ),
                const Text(
                  " : ترتيبها",
                  style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "${arabicQuran[widget.surahId]['type']}",
                  style: const TextStyle(
                    fontFamily: 'myfont',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffa4550a),
                  ),
                ),
                const Text(
                  " : نوعها",
                  style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 18,
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
