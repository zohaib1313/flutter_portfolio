import 'dart:async';

import 'package:flutter/material.dart';
import 'package:potrtfolio/UI/About.dart';
import 'package:potrtfolio/UI/FeatureProject.dart';
import 'package:potrtfolio/UI/Work.dart';
import 'package:potrtfolio/Widget/AppBarTitle.dart';
import 'package:potrtfolio/Widget/CustomText.dart';
import 'package:potrtfolio/Widget/MainTiitle.dart';
import 'package:potrtfolio/Widget/OSImages.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color(0xff0A192F),
        body: Container(
          child: Column(
            children: [
              //Mavigation Bar
              Container(
                height: 82,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.change_history,
                            size: 32.0,
                            color: Color(0xff64FFDA),
                          ),
                          onPressed: () {}),
                      Spacer(),
                      Expanded(
                        child: Row(
                          children: [
                            AppBarTitle(
                              text: "About",
                              ontab: () {
                                //TODO
                              },
                            ),
                            AppBarTitle(
                              text: "Experience",
                              ontab: () {
                                //TODO
                              },
                            ),
                            AppBarTitle(
                              text: "Work",
                              ontab: () {
                                //TODO
                              },
                            ),
                            AppBarTitle(
                              text: "Contact",
                              ontab: () {
                                //TODO
                              },
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              child: Card(
                                elevation: 4.0,
                                color: Color(0xff64FFDA),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                child: Container(
                                  margin: EdgeInsets.all(0.85),
                                  height: 100,
                                  width: 100,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Color(0xff0A192F),
                                    borderRadius: BorderRadius.circular(6.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0,
                                    ),
                                    child: Text(
                                      "Resume",
                                      style: TextStyle(
                                        color: Color(0xff64FFDA),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),

              Row(
                children: [
                  //Social Icon
                  Container(
                    width: size.width * 0.09,
                    height: size.height - 82,
                    // color: Colors.pinkAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            icon: Icon(Icons.person),
                            color: Color(0xffffA8B2D1),
                            iconSize: 16.0,
                            onPressed: () {}),
                        IconButton(
                            icon: Icon(Icons.group),
                            color: Color(0xffffA8B2D1),
                            iconSize: 16.0,
                            onPressed: () {}),
                        IconButton(
                          icon: Icon(Icons.call),
                          color: Color(0xffffA8B2D1),
                          onPressed: () {},
                          iconSize: 16.0,
                        ),
                        IconButton(
                            icon: Icon(Icons.phone),
                            color: Color(0xffffA8B2D1),
                            iconSize: 16.0,
                            onPressed: () {}),
                        IconButton(
                            icon: Icon(Icons.mail),
                            color: Color(0xffffA8B2D1),
                            iconSize: 16.0,
                            onPressed: () {}),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Container(
                            height: 100,
                            width: 2,
                            color: Colors.grey.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                    height: size.height - 82,
                    child: SingleChildScrollView(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 92.0,
                          ),
                          CustomText(
                            text: "Hi, my name is",
                            textsize: 16.0,
                            color: Color(0xff41FBDA),
                            letterSpacing: 3.0,
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          CustomText(
                            text: "Tushar Nikam.",
                            textsize: 68.0,
                            color: Color(0xffCCD6F6),
                            fontWeight: FontWeight.w900,
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          CustomText(
                            text: "I build things for the Android and web.",
                            textsize: 56.0,
                            color: Color(0xffCCD6F6).withOpacity(0.6),
                            fontWeight: FontWeight.w700,
                          ),
                          SizedBox(
                            height: 16.0,
                          ),
                          Wrap(
                            children: [
                              Text(
                                "I'm a freelancer based in Nashik, IN specializing in \nbuilding (and occasionally designing) exceptional websites, \napplications, and everything in between.",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16.0,
                                  letterSpacing: 2.75,
                                  wordSpacing: 0.75,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 92.0,
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            color: Color(0xff64FFDA),
                            child: Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.all(0.75),
                              height: 56.0,
                              width: 160.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                color: Color(0xff0A192F),
                              ),
                              child: MaterialButton(
                                onPressed: () {},
                                hoverColor: Colors.green,
                                child: Text(
                                  "Get In Touch",
                                  style: TextStyle(
                                    color: Color(0xff64FFDA),
                                    letterSpacing: 2.75,
                                    wordSpacing: 1.0,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 150.0,
                          ),

                          //About Me
                          About(),

                          SizedBox(
                            height: 6.0,
                          ),

                          //Where I've Worked
                          Work(),

                          SizedBox(
                            height: 6.0,
                          ),

                          MainTiitle(
                            number: "0.3",
                            text: "Some Things I've Built",
                          ),

                          SizedBox(
                            height: size.height * 0.06,
                          ),

                          //Some Things I've Built Main Project

                          FeatureProject(
                            imagePath: "images/pic9.jpg",
                            ontab: () {},
                            projectDesc:
                                "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
                            projectTitle: "WhatsaApp UI Clone",
                            tech1: "Flutter",
                            tech2: "Dart",
                          ),

                          FeatureProject(
                            imagePath: "images/pic2.jpg",
                            ontab: () {},
                            projectDesc:
                                "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
                            projectTitle: "OctoProfile",
                            tech1: "GitHub API",
                            tech2: "GitHub API",
                            tech3: "GitHub",
                          ),

                          FeatureProject(
                            imagePath: "images/pic3.png",
                            ontab: () {},
                            projectDesc:
                                "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
                            projectTitle: "OctoProfile",
                            tech1: "GitHub API",
                            tech2: "GitHub API",
                            tech3: "GitHub",
                          ),

                          FeatureProject(
                            imagePath: "images/pic4.jpg",
                            ontab: () {},
                            projectDesc:
                                "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
                            projectTitle: "OctoProfile",
                            tech1: "GitHub API",
                            tech2: "GitHub API",
                            tech3: "GitHub",
                          ),

                          FeatureProject(
                            imagePath: "images/pic5.jpg",
                            ontab: () {},
                            projectDesc:
                                "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
                            projectTitle: "OctoProfile",
                            tech1: "GitHub API",
                            tech2: "GitHub API",
                            tech3: "GitHub",
                          ),

                          FeatureProject(
                            imagePath: "images/pic6.jpg",
                            ontab: () {},
                            projectDesc:
                                "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
                            projectTitle: "OctoProfile",
                            tech1: "GitHub API",
                            tech2: "GitHub API",
                            tech3: "GitHub",
                          ),

                          FeatureProject(
                            imagePath: "images/pic7.jpg",
                            ontab: () {},
                            projectDesc:
                                "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
                            projectTitle: "OctoProfile",
                            tech1: "GitHub API",
                            tech2: "GitHub API",
                            tech3: "GitHub",
                          ),

                          FeatureProject(
                            imagePath: "images/pic8.jpg",
                            ontab: () {},
                            projectDesc:
                                "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
                            projectTitle: "OctoProfile",
                            tech1: "GitHub API",
                            tech2: "GitHub API",
                            tech3: "GitHub",
                          ),

                          FeatureProject(
                            imagePath: "images/pic10.jpg",
                            ontab: () {},
                            projectDesc:
                                "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
                            projectTitle: "OctoProfile",
                            tech1: "GitHub API",
                            tech2: "GitHub API",
                            tech3: "GitHub",
                          ),

                          FeatureProject(
                            imagePath: "images/pic11.jpg",
                            ontab: () {},
                            projectDesc:
                                "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
                            projectTitle: "OctoProfile",
                            tech1: "GitHub API",
                            tech2: "GitHub API",
                            tech3: "GitHub",
                          ),

                          MainTiitle(
                            number: "0.4",
                            text: "Open Source Project",
                          ),

                          SizedBox(
                            height: size.height * 0.04,
                          ),

                          //other Projects
                          Container(
                            height: size.height * 0.77,
                            width: size.width - 100,
                            //color: Colors.deepOrangeAccent,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    OSImages(
                                      image: "images/pic101.png",
                                    ),
                                    OSImages(
                                      image: "images/pic103.png",
                                    ),
                                    OSImages(
                                      image: "images/pic111.gif",
                                    ),
                                    OSImages(
                                      image: "images/pic113.jfif",
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          SizedBox(
                            height: size.height * 0.04,
                          ),

                          //other Projects
                          Container(
                            height: size.height * 0.77,
                            width: size.width - 100,
                            //color: Colors.deepOrangeAccent,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    OSImages(
                                      image: "images/pic114.png",
                                    ),
                                    OSImages(
                                      image: "images/pic115.png",
                                    ),
                                    OSImages(
                                      image: "images/pic116.jfif",
                                    ),
                                    OSImages(
                                      image: "images/pic117.png",
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          SizedBox(
                            height: size.height * 0.04,
                          ),

                          //other Projects
                          Container(
                            height: size.height * 0.77,
                            width: size.width - 100,
                            //color: Colors.deepOrangeAccent,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    OSImages(
                                      image: "images/pic118.jpeg",
                                    ),
                                    OSImages(
                                      image: "images/pic119.jpeg",
                                    ),
                                    OSImages(
                                      image: "images/pic120.png",
                                    ),
                                    OSImages(
                                      image: "images/pic121.png",
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
    
                          SizedBox(
                            height: size.height * 0.06,
                          ),

                          FeatureProject(
                            imagePath: "images/pic102.gif",
                            ontab: () {},
                            projectDesc:
                                "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
                            projectTitle: "OctoProfile",
                            tech1: "Dart",
                            tech2: "Flutter",
                            tech3: "Web",
                          ),

                          FeatureProject(
                            imagePath: "images/pic104.png",
                            ontab: () {},
                            projectDesc:
                                "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
                            projectTitle: "OctoProfile",
                            tech1: "Dart",
                            tech2: "Flutter",
                            tech3: "Web",
                          ),

                          FeatureProject(
                            imagePath: "images/pic105.png",
                            ontab: () {},
                            projectDesc:
                                "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
                            projectTitle: "OctoProfile",
                            tech1: "Dart",
                            tech2: "Flutter",
                            tech3: "Web",
                          ),

                          FeatureProject(
                            imagePath: "images/pic106.png",
                            ontab: () {},
                            projectDesc:
                                "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
                            projectTitle: "OctoProfile",
                            tech1: "Dart",
                            tech2: "Flutter",
                            tech3: "Web",
                          ),

                          FeatureProject(
                            imagePath: "images/pic107.jfif",
                            ontab: () {},
                            projectDesc:
                                "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
                            projectTitle: "OctoProfile",
                            tech1: "Dart",
                            tech2: "Flutter",
                            tech3: "Web",
                          ),

                          FeatureProject(
                            imagePath: "images/pic108.jfif",
                            ontab: () {},
                            projectDesc:
                                "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
                            projectTitle: "OctoProfile",
                            tech1: "Dart",
                            tech2: "Flutter",
                            tech3: "Web",
                          ),

                          FeatureProject(
                            imagePath: "images/pic109.jfif",
                            ontab: () {},
                            projectDesc:
                                "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
                            projectTitle: "OctoProfile",
                            tech1: "Dart",
                            tech2: "Flutter",
                            tech3: "Web",
                          ),

                          FeatureProject(
                            imagePath: "images/pic110.jfif",
                            ontab: () {},
                            projectDesc:
                                "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
                            projectTitle: "OctoProfile",
                            tech1: "Dart",
                            tech2: "Flutter",
                            tech3: "Web",
                          ),

                          //Get In Touch
                          Container(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width - 100,
                            //  color: Colors.orange,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomText(
                                  text: "0.4 What's Next?",
                                  textsize: 16.0,
                                  color: Color(0xff41FBDA),
                                  letterSpacing: 3.0,
                                ),
                                SizedBox(
                                  height: 16.0,
                                ),
                                CustomText(
                                  text: "Get In Touch",
                                  textsize: 42.0,
                                  color: Colors.white,
                                  letterSpacing: 3.0,
                                  fontWeight: FontWeight.w700,
                                ),
                                SizedBox(
                                  height: 16.0,
                                ),
                                Wrap(
                                  children: [
                                    Text(
                                      "Although I'm currently looking for SDE-1 opportunities, my inbox is \nalways open. Whether you have a question or just want to say hi, I'll try my \nbest to get back to you!",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.4),
                                        letterSpacing: 0.75,
                                        fontSize: 17.0,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 32.0,
                                ),
                                Card(
                                  elevation: 4.0,
                                  color: Color(0xff64FFDA),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6.0),
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.all(0.85),
                                    height: size.height * 0.09,
                                    width: size.width * 0.10,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Color(0xff0A192F),
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0,
                                      ),
                                      child: Text(
                                        "Say Hello",
                                        style: TextStyle(
                                          color: Color(0xff64FFDA),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Footer
                          Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.height / 6,
                            width: MediaQuery.of(context).size.width - 100,
                            //color: Colors.white,
                            child: Text(
                              "Designed & Built by Tushar Nikam",
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.4),
                                letterSpacing: 1.75,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
                  )),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.07,
                    height: MediaQuery.of(context).size.height - 82,
                    //color: Colors.orange,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        RotatedBox(
                          quarterTurns: 45,
                          child: Text(
                            "tusharnikam2021@gmail.com",
                            style: TextStyle(
                              color: Colors.grey.withOpacity(0.6),
                              letterSpacing: 3.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Container(
                            height: 100,
                            width: 2,
                            color: Colors.grey.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}