import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:google_fonts/google_fonts.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

@immutable
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double spacing = 20.0;

  final List<Color> colorA = <Color>[
    Colors.purple.shade400,
    Colors.pink.shade400
  ];
  final List<Color> colorB = <Color>[
    Colors.purple.shade400,
    Colors.blue.shade400
  ];
  final List<Color> colorC = <Color>[
    Colors.blue.shade400,
    Colors.green.shade400
  ];
  final List<Color> colorD = <Color>[
    Colors.red.shade400,
    Colors.orange.shade400
  ];

/* This is almost Microsoft logo?
  List<Color> colorA = [Colors.purple.shade400, Colors.pink.shade400];,Colors.orange.shade400];
  List<Color> colorB = [Colors.red.shade400, Colors.orange.shade400];
  List<Color> colorC = [Colors.purple.shade400, Colors.blue.shade400];,Colors.green.shade400,];
  List<Color> colorD = [Colors.blue.shade400, Colors.green.shade400];
  */
/* 
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
      body: Center(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      LogoContainer(
                        color: colorA,
                        direction: Alignment.bottomLeft,
                      ),
                      SizedBox(
                        width: spacing,
                      ),
                      LogoContainer(
                        color: colorB,
                        direction: Alignment.bottomLeft,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: spacing,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      LogoContainer(
                        color: colorC,
                        direction: Alignment.bottomLeft,
                      ),
                      SizedBox(
                        width: spacing,
                      ),
                      LogoContainer(
                        color: colorD,
                        direction: Alignment.bottomLeft,
                      ),
                    ],
                  ),
                  /* icon
                  FaIcon(
                    FontAwesomeIcons.microsoft,
                    color: Colors.white,
                  ),
                  */
                  /* name bottom
                  Container(
                    child: Text(
                      'Hattomo',
                      style: Theme.of(context).textTheme.headline1.copyWith(
                           // color: Colors.grey[400],
                          ),
                      /* google font (path provider required)
                      style: GoogleFonts.balooThambi(
                        textStyle: Theme.of(context).textTheme.headline1.copyWith(
                              color: Colors.grey[400],
                            ),
                      ),
                      */
                    ),
                  ),
                  */
                ],
              ),
              /* name right
              Container(
                child: Text(
                  'Hattomo',
                  style: Theme.of(context).textTheme.headline1.copyWith(
                        // color: Colors.grey[400],
                        fontSize: 350.0,
                      ),
                  /*
                      style: GoogleFonts.balooThambi(
                        textStyle: Theme.of(context).textTheme.headline1.copyWith(
                              color: Colors.grey[400],
                            ),
                      ),
                      */
                ),
              ),
              */
            ],
          ),
        ),
      ),
    );
  }
}

@immutable
class LogoContainer extends StatelessWidget {
  const LogoContainer({Key key, this.color, this.direction}) : super(key: key);
  final List<Color> color;
  //final Color color;
  final Alignment direction;

  @override
  Widget build(BuildContext context) {
    const double iconSize = 200.0;
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
        borderRadius: const BorderRadius.all(
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
