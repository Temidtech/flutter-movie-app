import 'dart:async';

import 'package:flutter/material.dart';
import 'package:movie_app/utils/colors.dart';
import 'package:movie_app/widgets/pulse_floating_button.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => new _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;
  AnimationController _pulseController;
  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/home');
  }

  @override
  void initState() {
    super.initState();
    _pulseController = new AnimationController(
      vsync: this,
    );
     _startAnimation();
    //setUpAnim();
  }
    void _startAnimation() {
    _pulseController.stop();
    _pulseController.reset();
    _pulseController.repeat(
      period: Duration(seconds: 1),
    );
  }

  @override
  void dispose() {
    _pulseController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    final double _height = MediaQuery.of(context).size.height;
    //_controller.forward();
    return Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: CustomPaint(
                  painter: new SpritePainter(_pulseController),
                  child: new SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: new FloatingActionButton(
          child: const Icon(Icons.arrow_forward), onPressed: () {
            navigationPage();
          },
        ),
                  ),
                ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: new AssetImage(
                    'assets/images/avenger.jpg',
                  ),
                  fit: BoxFit.fitHeight)),
          child: SafeArea(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    'Enjoy \nthe best cinema \nExperience',
                    style: TextStyle(
                         fontWeight: FontWeight.w800,
                        fontFamily: 'MPLUSRounded1c',
                        fontSize: 35.0,
                        color: Colors.white),
                  ),
                ),
                Center(child: logo),
                //SizedBox(height: 30,),
                Container(
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                      //color: Colors.white70
                      ),
                  height: _height / 4,
                )
              ],
            ),
          ),
        ));
  }
}

Widget logo = new Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    Container(
      padding: EdgeInsets.all(4),
      child: Text(
        'Ozone',
        style: TextStyle(
            //fontWeight: FontWeight.w500,
            fontFamily: 'MPLUSRounded1c',
            fontSize: 25.0,
            color: Colors.white),
      ),
    ),
    Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(7), bottomRight: Radius.circular(7))),
      child: Text(
        'Cinema',
        style: TextStyle(
            fontWeight: FontWeight.w800,
            fontFamily: 'MPLUSRounded1c',
            fontSize: 25.0,
            color: Colors.blue),
      ),
    ),
  ],
);
