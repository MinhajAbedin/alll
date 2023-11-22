import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ABOUT ME",
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
                image: AssetImage("images/aboutus.png"), fit: BoxFit.cover),
//            gradient: LinearGradient(
//                begin: Alignment.topLeft,
//                end: Alignment.bottomRight,
//                stops: [0.3, 1],
//                colors: [Colors.black87, Colors.black]),
          ),
          

          child: Column(
            children: <Widget>[
              
              const CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage("image/IMG_2085.JPG"), 
              ),
              
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  
                  "Who Am I ?",
                  style: TextStyle(
                    fontFamily: 'Sniglet',
                    fontSize: 37,
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "My Name Is Minhajul Abedin"
                  "I am an enthusiastic developer, learner, an adventurous CS geek with some designing knack. "
                      "Also I am a strong believer that imagination brings the change and shows a path to"
                      " develop something amazing and interesting. My interests include designing and developing sustainable "
                      "products which can solve people's problems.",
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
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "What Am I ?",
                  style: TextStyle(
                    fontFamily: 'Sniglet',
                    fontSize: 37,
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "I am a student, a developer and a designer. I am a"
                      "part-time writer and mentor as well. I am someone who loves solitude the "
                      "most. Solitude generates the best out of me.",
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
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "My Hobbies",
                  style: TextStyle(
                    fontFamily: 'Sniglet',
                    fontSize: 37,
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 20, 0),
                child: Row(
                  children: <Widget>[
                    IconButton(
                        icon: const FaIcon(FontAwesomeIcons.music),
                        color: Colors.pinkAccent,
                        iconSize: 30,
                        onPressed: () {}),
                    IconButton(
                        // ignore: deprecated_member_use
                        icon: const FaIcon(FontAwesomeIcons.playCircle),
                        color: Colors.yellowAccent,
                        iconSize: 33,
                        onPressed: () {}),
                    IconButton(
                        icon: const FaIcon(FontAwesomeIcons.gamepad),
                        color: Colors.purpleAccent,
                        iconSize: 33,
                        onPressed: () {}),
                    IconButton(
                        icon: const FaIcon(FontAwesomeIcons.feather),
                        color: Colors.greenAccent,
                        iconSize: 33,
                        onPressed: () {}),
                    IconButton(
                        // ignore: deprecated_member_use
                        icon: const FaIcon(FontAwesomeIcons.tableTennis),
                        color: Colors.blueAccent,
                        iconSize: 33,
                        onPressed: () {}),
                    IconButton(
                        icon: const FaIcon(FontAwesomeIcons.bug),
                        color: Colors.redAccent,
                        iconSize: 33,
                        onPressed: () {}),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "My Goals In Life",
                  style: TextStyle(
                    fontFamily: 'Sniglet',
                    fontSize: 37,
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "In everyday life I witness a lot of problems in my "
                      "surrounding that can be solved using technology. My goal in"
                      "life is to design something good, that can solve people's problem and "
                      "can inspire the upcoing generation as well.",
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
                height: 40,
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