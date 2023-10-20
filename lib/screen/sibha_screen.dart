// ignore_for_file:sized_box_for_whitespace, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:flutter_application_quran/screen/main_homepage.dart';

class SibhaScreen extends StatefulWidget {
  const SibhaScreen({super.key});

  @override
  State<SibhaScreen> createState() => _SibhaScreenState();
}

class _SibhaScreenState extends State<SibhaScreen> {
  int counter = 0;
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
              icon: const Icon(Icons.arrow_forward_ios))
        ],
        backgroundColor: const Color(0xffa4550a),
        title: const Text(
          "المسبحة",
          style: TextStyle(
              fontFamily: 'myfont', fontSize: 23, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.only(top: 120),
        color: const Color(0xfffffdf5),
        child: InkWell(
          onTap: () {
            setState(() {
              counter++;
            });
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      counter = 0;
                    });
                  },
                  icon: const Icon(
                    Icons.autorenew_rounded,
                    size: 55,
                    color: Color(0xffa4550a),
                  )),
              const SizedBox(
                height: 80,
              ),
              Container(
                width: 250,
                height: 250,
                padding: const EdgeInsets.only(top: 31),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(500),
                  border:
                      Border.all(color: const Color(0xffa4550a), width: 1.2),
                ),
                child: Center(
                    child: Text(
                  "${counter}",
                  style: const TextStyle(
                    fontFamily: 'myfont',
                    fontSize: 80,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffa4550a),
                  ),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
