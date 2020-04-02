import 'package:flutter/material.dart';
import 'dart:ui';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double spacing = 20.0;

  List<Color> colorA = [Colors.purple.shade400, Colors.pink.shade400];
  List<Color> colorB = [Colors.red.shade400, Colors.orange.shade400];
  List<Color> colorC = [Colors.purple.shade400, Colors.blue.shade400];
  List<Color> colorD = [Colors.blue.shade400, Colors.green.shade400];

/* This is almost Microsoft logo?
  List<Color> colorA = [Colors.purple.shade400, Colors.pink.shade400];,Colors.orange.shade400];
  List<Color> colorB = [Colors.red.shade400, Colors.orange.shade400];
  List<Color> colorC = [Colors.purple.shade400, Colors.blue.shade400];,Colors.green.shade400,];
  List<Color> colorD = [Colors.blue.shade400, Colors.green.shade400];
  */
/* This is almost Microsoft logo
  Color colorA = Colors.blueAccent;
  Color colorB = Colors.pinkAccent;
  Color colorC = Colors.deepOrange[300];
  Color colorD = Colors.teal;
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        children: <Widget>[
          Center(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      LogoContainer(
                        color: colorA,
                        direction: Alignment.bottomLeft,
                      ),
                      SizedBox(
                        height: spacing,
                      ),
                      LogoContainer(
                        color: colorB,
                        direction: Alignment.bottomLeft,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: spacing,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      LogoContainer(
                        color: colorC,
                        direction: Alignment.bottomLeft,
                      ),
                      SizedBox(
                        height: spacing,
                      ),
                      LogoContainer(
                        color: colorD,
                        direction: Alignment.bottomLeft,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          /*
          Center(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                child: Container(
                  width: 300.0,
                  height: 300.0,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.3),
                  ),
                ),
              ),
            ),
          ),
          */
        ],
      ),
    );
  }
}

class LogoContainer extends StatelessWidget {
  LogoContainer({Key key, this.color, this.direction}) : super(key: key);
  final List<Color> color;
  //final Color color;
  final Alignment direction;
  final double iconSize = 200.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: iconSize,
      width: iconSize,
      decoration: BoxDecoration(
        /*
        boxShadow: [
          BoxShadow(
            //color: color,
            blurRadius: 0.2,
            spreadRadius: 1.0,
            //offset: Offset(2.0, 2.0), // shadow direction: bottom right
          )
        ],
        */
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
        //color: color,
        gradient: RadialGradient(colors: color, center: direction, radius: 1.2),
        /*
          gradient: LinearGradient(
              colors: color,
              begin: Alignment.topRight,
              end: Alignment.bottomLeft),
              */
      ),
    );
  }
}
