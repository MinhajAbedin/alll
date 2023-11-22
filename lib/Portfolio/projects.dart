// ignore_for_file: deprecated_member_use, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: camel_case_types
class project extends StatelessWidget {
  const project({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "MY PROJECTS",
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
                image: AssetImage("images/workexperience.png"),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.lightBlueAccent,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  width: 400,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.black,
                    elevation: 10,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.fromLTRB(10, 30, 0, 20),
                          child: ListTile(
                            leading: FaIcon(
                              FontAwesomeIcons.python,
                              size: 100,
                              color: Colors.lightBlueAccent,
                            ),
                            title: Text('eduAlgo\n',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Sniglet',
                                    fontSize: 20)),
                            subtitle: Text(
                                'A simple python package having '
                                'modules of different algorithms to be used in '
                                'educational purposes.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Comfortaa",
                                )),
                          ),
                        ),
                        ButtonBar(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.greenAccent,
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: const TextButton(
                                onPressed: edualgo,
                                child: Text('View Project',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Comfortaa",
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.lightBlueAccent,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  width: 400,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.black,
                    elevation: 10,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.fromLTRB(10, 30, 0, 20),
                          child: ListTile(
                            leading: FaIcon(
                              FontAwesomeIcons.industry,
                              size: 90,
                              color: Colors.blueGrey,
                            ),
                            title: Text(
                                'International Greenhouse Gas Emission\n',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Sniglet',
                                    fontSize: 20)),
                            subtitle: Text(
                                'Open-Sourced Data Science project, '
                                'that is made on the basis of a data-set from '
                                'Kaggle.com.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Comfortaa",
                                )),
                          ),
                        ),
                        ButtonBar(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.greenAccent,
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: const TextButton(
                                onPressed: greenhouse,
                                child: Text('View Project',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Comfortaa",
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.lightBlueAccent,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  width: 400,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.black,
                    elevation: 10,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.fromLTRB(10, 30, 0, 20),
                          child: ListTile(
                            leading: FaIcon(
                              FontAwesomeIcons.shieldVirus,
                              size: 90,
                              color: Colors.yellowAccent,
                            ),
                            title: Text('The Frontline Warriors\n',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Sniglet',
                                    fontSize: 20)),
                            subtitle: Text(
                                'This website is made in recognition '
                                'of the frontend warriors of the pandemic.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Comfortaa",
                                )),
                          ),
                        ),
                        ButtonBar(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.greenAccent,
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: const TextButton(
                                onPressed: frontline,
                                child: Text('View Project',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Comfortaa",
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.lightBlueAccent,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  width: 400,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.black,
                    elevation: 10,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.fromLTRB(10, 30, 0, 20),
                          child: ListTile(
                            leading: FaIcon(
                              FontAwesomeIcons.dice,
                              size: 80,
                              color: Colors.purpleAccent,
                            ),
                            title: Text('Algorithmic Treasure\n',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Sniglet',
                                    fontSize: 20)),
                            subtitle: Text(
                                'This project aims to build a website '
                                'which will contain the algorithmic codes '
                                'along with the techniques and explanations.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Comfortaa",
                                )),
                          ),
                        ),
                        ButtonBar(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.greenAccent,
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: const TextButton(
                                onPressed: algorithmic,
                                child: Text('View Project',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Comfortaa",
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.lightBlueAccent,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  width: 400,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.black,
                    elevation: 10,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.fromLTRB(10, 30, 0, 20),
                          child: ListTile(
                            leading: FaIcon(
                              FontAwesomeIcons.chartBar,
                              size: 90,
                              color: Colors.pinkAccent,
                            ),
                            title: Text('Survival Analysis Data\n',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Sniglet',
                                    fontSize: 20)),
                            subtitle: Text(
                                'Designed the Exploratory Data Analysis '
                                'part of a Survival Analysis data set from Kaggle.com',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Comfortaa",
                                )),
                          ),
                        ),
                        ButtonBar(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.greenAccent,
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: const TextButton(
                                onPressed: survival,
                                child: Text('View Project',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Comfortaa",
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.lightBlueAccent,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  width: 400,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.black,
                    elevation: 10,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.fromLTRB(10, 30, 0, 20),
                          child: ListTile(
                            leading: FaIcon(
                              FontAwesomeIcons.android,
                              size: 80,
                              color: Colors.greenAccent,
                            ),
                            title: Text('Coding Master\n',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Sniglet',
                                    fontSize: 20)),
                            subtitle: Text(
                                'Personal portfolio application'
                                'template using Flutter SDK and Dart.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Comfortaa",
                                )),
                          ),
                        ),
                        ButtonBar(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.greenAccent,
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: const TextButton(
                                onPressed: codingmas,
                                child: Text('View Project',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Comfortaa",
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.lightBlueAccent,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  width: 400,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.black,
                    elevation: 10,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.fromLTRB(10, 30, 0, 20),
                          child: ListTile(
                            leading: FaIcon(
                              FontAwesomeIcons.chessBoard,
                              size: 90,
                              color: Colors.deepOrange,
                            ),
                            title: Text('Cat Photo Classification\n',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Sniglet',
                                    fontSize: 20)),
                            subtitle: Text(
                                'A binary classification project'
                                'using manually implemented CNN to classify cat photo '
                                'and other photos included in the dataset from Kaggle.com',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Comfortaa",
                                )),
                          ),
                        ),
                        ButtonBar(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.greenAccent,
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: const TextButton(
                                onPressed: cat,
                                child: Text('View Project',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Comfortaa",
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.lightBlueAccent,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  width: 400,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.black,
                    elevation: 10,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.fromLTRB(10, 30, 0, 20),
                          child: ListTile(
                            leading: FaIcon(
                              FontAwesomeIcons.robot,
                              size: 80,
                              color: Colors.blueAccent,
                            ),
                            title: Text('Robotics Project\n',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Sniglet',
                                    fontSize: 20)),
                            subtitle: Text(
                              'Designed a Line Follower Bot and '
                              'a Bluetooth Controlled Bot using Arduino.',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Comfortaa",
                              ),
                            ),
                          ),
                        ),
                        ButtonBar(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.greenAccent,
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: const TextButton(
                                onPressed: robotics,
                                child: Text('View Project',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Comfortaa",
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: duplicate_ignore
edualgo() async {
  const url = 'https://edualgo.github.io/documentation/';
  // ignore: deprecated_member_use
  if (await canLaunch(url)) {
    // ignore: deprecated_member_use
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

greenhouse() async {
  const url =
      'https://github.com/MinhajAbedin/My-First-Portfolio.git';
  // ignore: deprecated_member_use
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

frontline() async {
  const url = 'https://github.com/MinhajAbedin/leader-board-css3.git';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

algorithmic() async {
  const url = 'https://github.com/MinhajAbedin/leader-board-css3.git';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

survival() async {
  const url = 'https://github.com/MinhajAbedin/leader-board-css3.git';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

codingmas() async {
  const url = 'https://github.com/MinhajAbedin/leader-board-css3.git';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

cat() async {
  const url = 'https://github.com/MinhajAbedin/leader-board-css3.git';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

robotics() async {
  const url = 'https://github.com/MinhajAbedin/leader-board-css3.git';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
