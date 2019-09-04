import 'package:flutter/material.dart';
import 'package:movie_app/ui/details.dart';
import 'package:movie_app/ui/home.dart';
import 'package:movie_app/ui/splash.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: LoginView(auth: new Auth()),
        home: Splash(),
        routes: <String, WidgetBuilder>{

          '/home': (BuildContext context) => new Home(),
          '/details': (BuildContext context) => new Details(),

        }
    );

  }
}
