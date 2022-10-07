import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:potrtfolio/UI/HomePage.dart';
import 'package:potrtfolio/UI/MobileHome.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        print(constraints.maxWidth);
        if (constraints.maxWidth <= 780) {
          return Container(
            color: Colors.red,
          );
        } else {
          return HomePage();
        }
      },
    );
  }
}
