// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, non_constant_identifier_names, unused_element
import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({super.key});

  final Uri url = Uri.parse('https://github.com/');
  final Uri url2 = Uri.parse('https://google.com/');
  Future<void> _launchUrl() async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> _launchUrl2() async {
    if (!await launchUrl(url2)) {
      throw Exception('Could not launch $url2');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 250,
            color: Color(0xffa4550a),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 80,
                    child: Image.asset(
                      "assets/images/logo1.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "القران الكريم",
                    style: TextStyle(
                        fontFamily: 'myfont',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              Share.share("تطبيق القران الكريم");
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "مشاركة البرنامج",
                  style: TextStyle(
                    fontFamily: 'myfont',
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffa4550a),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Icon(
                  Icons.share,
                  color: Color(0xffa4550a),
                  size: 25,
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: _launchUrl,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  " تقييم البرنامج",
                  style: TextStyle(
                    fontFamily: 'myfont',
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffa4550a),
                  ),
                ),
                SizedBox(
                  width: 35,
                ),
                Icon(
                  Icons.rate_review,
                  color: Color(0xffa4550a),
                  size: 25,
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: _launchUrl2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "مساعدة",
                  style: TextStyle(
                    fontFamily: 'myfont',
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffa4550a),
                  ),
                ),
                SizedBox(
                  width: 35,
                ),
                Icon(
                  Icons.help,
                  color: Color(0xffa4550a),
                  size: 25,
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
