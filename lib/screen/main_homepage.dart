import 'package:flutter/material.dart';
import 'package:flutter_application_quran/screen/drawer.dart';
import 'package:flutter_application_quran/screen/homepage.dart';
import 'package:flutter_application_quran/screen/homepage2.dart';
import 'package:flutter_application_quran/screen/homepage3.dart';
import 'package:flutter_application_quran/screen/sibha_screen.dart';

class MainHomepage extends StatelessWidget {
  const MainHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: MyDrawer(),
      appBar: AppBar(
        leading: const Text(""),
        backgroundColor: const Color(0xffa4550a),
        title: const Text(
          "القران الكريم",
          style: TextStyle(fontFamily: 'myfont', fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: const Color(0xfffffdf5),
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                "لستُ .. أعرف نوع معاناتكٓم لكنيِ أعرف أنُ القرآن شفاء كل عناء",
                style: TextStyle(
                    color: Color(0xffa4550a),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'myfont',
                    height: 1.5),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 55,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Homepage2(),
                    ));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2.4,
                    height: 180,
                    padding:
                        const EdgeInsets.only(top: 10, bottom: 10, right: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      gradient: const LinearGradient(colors: [
                        Color(0xffd98856),
                        Color(0xffa4550a),
                      ]),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/d2.png",
                          width: 60,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              "assets/images/logo3.png",
                              width: 55,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "القران الكريم",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'myfont'),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "مصحف",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'myfont'),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Homepage(),
                    ));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2.4,
                    height: 180,
                    padding:
                        const EdgeInsets.only(top: 10, bottom: 10, right: 5),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(82, 244, 160, 81),
                        ),
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/d1.png",
                          width: 60,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              "assets/images/logo3b.png",
                              width: 55,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "القران الكريم",
                                  style: TextStyle(
                                    color: Color(0xffa4550a),
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'myfont',
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "نص",
                                  style: TextStyle(
                                      color: Color(0xffa4550a),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'myfont'),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Homepage3(),
                    ));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2.4,
                    height: 180,
                    padding:
                        const EdgeInsets.only(top: 10, bottom: 10, right: 10),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(82, 244, 160, 81),
                        ),
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/d1.png",
                          width: 60,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              "assets/images/logo6.png",
                              width: 55,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "تفاصيل سور",
                                  style: TextStyle(
                                    color: Color(0xffa4550a),
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'myfont',
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "القران",
                                  style: TextStyle(
                                      color: Color(0xffa4550a),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'myfont'),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SibhaScreen(),
                    ));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2.4,
                    height: 180,
                    padding:
                        const EdgeInsets.only(top: 10, bottom: 10, right: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      gradient: const LinearGradient(colors: [
                        Color(0xffd98856),
                        Color(0xffa4550a),
                      ]),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/images/d2.png",
                          width: 60,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              "assets/images/logo5.png",
                              width: 55,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "المسبحة",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'myfont'),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "الألكترونية",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'myfont'),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
