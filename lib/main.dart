// ignore_for_file: unnecessary_import, use_key_in_widget_constructors, prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables, deprecated_member_use, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Portfolio/aboutme.dart';
import 'Portfolio/educationPage.dart';
import 'Portfolio/workExperience.dart';
import 'Portfolio/skills.dart';
import 'Portfolio/projects.dart';
// ignore: depend_on_referenced_packages
import 'package:fin/Calculator/CalculatorScreen.dart';
import 'package:fin/QUIZ/QuizScreen.dart';

import 'package:fin/Weather/Weather.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => FirstScreen(),
        '/aboutMe': (context) => AboutMe(),
        '/education': (context) => EducationPage(),
        '/workexperience': (context) => WorkExpPage(),
        '/skills': (context) => Skills(),
        '/project': (context) => project(),
        '/calculator': (context) => CalculatorScreen(),
        '/quiz': (context) => QuizScreen(),
        '/weather': (context) => WeatherWidget(),
      },
    );
  }
  
  weather() {}
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(
          "My Portfolio",
          style: TextStyle(
            fontFamily: "Comfortaa",
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/drawer.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Text(
                "App List",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.calculate),
              title: Text('Calculator'),
              onTap: () {
                Navigator.pushNamed(context, '/calculator');
              },
            ),
            ListTile(
              leading: Icon(Icons.quiz_outlined),
              title: Text('QUIZZ'),
              onTap: () {
                Navigator.pushNamed(context, '/quiz');
              },
            ),
            ListTile(
              leading: Icon(Icons.sunny_snowing),
              title: Text('Weather'),
              onTap: () {
                Navigator.pushNamed(context, '/weather');
              },
            ),
            ListTile(
              leading: Icon(Icons.developer_mode_sharp),
              title: Text('My Portfolio'),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: new Container(
          padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.png"), fit: BoxFit.cover),
//            gradient: LinearGradient(
//                begin: Alignment.topLeft,
//                end: Alignment.bottomRight,
//                stops: [0.3, 1],
//                colors: [Colors.black, Colors.black]),
          ),
          child: Column(
            children: <Widget>[
              IconButton(
                  icon: FaIcon(FontAwesomeIcons.android),
                  color: Colors.greenAccent,
                  iconSize: 180,
                  onPressed: () {}),
              SizedBox(
                height: 20,
              ),
              Text(
                "MINHAJUL ABEDIN",
                style: TextStyle(
                  fontFamily: 'Sniglet',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Junior Data Scientist \n\n"
                "    & DSA Developer",
                style: TextStyle(
                  fontFamily: 'Caveat Brush',
                  fontSize: 17,
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 27,
                width: 250,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 50.0,
                margin: EdgeInsets.all(10),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  padding: EdgeInsets.all(0.0),
                  splashColor: Colors.blueAccent,
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.deepPurple, Colors.purple],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Container(
                      constraints:
                          BoxConstraints(maxWidth: 260.0, minHeight: 60.0),
                      alignment: Alignment.topRight,
                      child: ListTile(
                        leading: Icon(
                          Icons.face_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                        title: Text(
                          "About Me",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: "Comfortaa"),
                        ),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/aboutMe');
                  },
                ),
              ),
              Container(
                height: 60.0,
                margin: EdgeInsets.all(10),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  padding: EdgeInsets.all(0.0),
                  splashColor: Colors.blueAccent,
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.purple, Colors.deepPurple],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Container(
                      constraints:
                          BoxConstraints(maxWidth: 260.0, minHeight: 60.0),
                      alignment: Alignment.center,
                      child: ListTile(
                        leading: Icon(
                          Icons.school_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                        title: Text(
                          "My Education",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: "Comfortaa"),
                        ),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/education');
                  },
                ),
              ),
              Container(
                height: 60.0,
                margin: EdgeInsets.all(10),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  padding: EdgeInsets.all(0.0),
                  splashColor: Colors.blueAccent,
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.deepPurple, Colors.purple],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Container(
                      constraints:
                          BoxConstraints(maxWidth: 260.0, minHeight: 60.0),
                      alignment: Alignment.center,
                      child: ListTile(
                        leading: Icon(
                          Icons.work_outline,
                          color: Colors.white,
                          size: 30,
                        ),
                        title: Text(
                          "Experience",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: "Comfortaa"),
                        ),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/workexperience');
                  },
                ),
              ),
              Container(
                height: 60.0,
                margin: EdgeInsets.all(10),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  padding: EdgeInsets.all(0.0),
                  splashColor: Colors.blueAccent,
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.purple, Colors.deepPurple],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Container(
                      constraints:
                          BoxConstraints(maxWidth: 260.0, minHeight: 60.0),
                      alignment: Alignment.center,
                      child: ListTile(
                        leading: Icon(
                          Icons.code_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                        title: Text(
                          "My Skills",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: "Comfortaa"),
                        ),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/skills');
                  },
                ),
              ),
              Container(
                height: 60.0,
                margin: EdgeInsets.all(10),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  padding: EdgeInsets.all(0.0),
                  splashColor: Colors.blueAccent,
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.purple, Colors.deepPurple],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Container(
                      constraints:
                          BoxConstraints(maxWidth: 260.0, minHeight: 60.0),
                      alignment: Alignment.center,
                      child: ListTile(
                        leading: Icon(
                          Icons.dashboard_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                        title: Text(
                          "My Project",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: "Comfortaa"),
                        ),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/project');
                  },
                ),
              ),
              SizedBox(
                height: 29,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 55,
                  ),
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.twitter),
                    color: Colors.lightBlue,
                    iconSize: 40,
                    onPressed: twitter_url,
                  ),
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.github),
                    color: Colors.white,
                    iconSize: 40,
                    onPressed: github_url,
                  ),
                  IconButton(
                      icon: FaIcon(FontAwesomeIcons.linkedin),
                      color: Colors.indigoAccent,
                      iconSize: 43,
                      onPressed: linked_in_url),
                  IconButton(
                      icon: FaIcon(FontAwesomeIcons.quora),
                      color: Colors.red,
                      iconSize: 43,
                      onPressed: quora_url),
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.medium),
                    color: Colors.white,
                    iconSize: 43,
                    onPressed: medium_url,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

linked_in_url() async {
  const url = 'https://www.facebook.com/minhajabid.abid';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

twitter_url() async {
  const url = 'https://www.facebook.com/minhajabid.abid';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

github_url() async {
  const url = 'https://github.com/MinhajAbedin';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

quora_url() async {
  const url = 'https://github.com/MinhajAbedin';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

medium_url() async {
  const url = 'https://github.com/MinhajAbedin';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
