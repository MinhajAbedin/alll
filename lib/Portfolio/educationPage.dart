// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MY EDUCATION",
          style: TextStyle(
            fontFamily: "Comfortaa",
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/education.png"), fit: BoxFit.cover),
          ),
          child: Column(
            children: <Widget>[
              Center(
                child: IconButton(
                  // ignore: deprecated_member_use
                  icon: const FaIcon(FontAwesomeIcons.university),
                  iconSize: 80,
                  color: Colors.white,
                  onPressed: () {},
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "Rajendra College in Faridpur",
                  style: TextStyle(
                    fontFamily: 'Sniglet',
                    fontSize: 27,
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  "Daffodil International University\n"
                      "(2020-2023)\n\n"
                      "I am currently an undergraduate and a junior developer majoring in CSE, "
                      "more specifically product development and deployment in distributed system.",
                  style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontSize: 17,
                    color: Colors.white,
                    letterSpacing: 2.0,
                    height: 2,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: IconButton(
                  icon: const FaIcon(FontAwesomeIcons.building),
                  iconSize: 80,
                  color: Colors.white,
                  onPressed: () {},
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "Rajendra College in Faridpur",
                  style: TextStyle(
                    fontFamily: 'Sniglet',
                    fontSize: 27,
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  "Bilgobindopur High School\n"
                      "(20**-20**)\n\n"
                      "I have completed my schooling majoring in Science."
                      "Also I was one of the best student in my schol. ",
                  style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontSize: 17,
                    color: Colors.white,
                    letterSpacing: 2.0,
                    height: 2,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: IconButton(
                  icon: const FaIcon(FontAwesomeIcons.school),
                  iconSize: 80,
                  color: Colors.white,
                  onPressed: () {},
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "Bilgobindopur High School",
                  style: TextStyle(
                    fontFamily: 'Sniglet',
                    fontSize: 27,
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  "PRIMARY & SECONDARY SCHOOLING\n"
                      "(200-201*)\n\n"
                      "I was the topper of my school "
                      ,
                  style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontSize: 17,
                    color: Colors.white,
                    letterSpacing: 2.0,
                    height: 2,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 80,
                width: 260,
                child: Divider(
                  color: Colors.redAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}