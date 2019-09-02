import 'package:flutter/material.dart';
import 'package:movie_app/model/data.dart';
import 'package:movie_app/utils/colors.dart';
import 'package:movie_app/utils/constant.dart';
import 'package:movie_app/widgets/horizontal_body.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    final double _height = MediaQuery.of(context).size.height;
       
    Container makeCard(Data data) => Container(
      width: _width/2,
      child: Card(
            elevation: 8.0,
            color: greenish,
             shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 80.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.black12,
                    ),
                    child: Center(
                      child: Text(
                        data.text1,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 10.0,
                        ),
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.ltr,
                        
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                    child: Text(
                      data.text2,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 15.0,
                          ),
                    ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                    child: Text(
                      "projectName",
                      style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.w700,
                          fontSize: 13.0),
                    ),

                )
              ],
            ),
          ),
          ),
    );
      
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Icon(Icons.menu),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Icon(Icons.account_circle),
            )
          ],
        ),
        body: Container(
          child: ListView(
            physics: AlwaysScrollableScrollPhysics(),
            children: <Widget>[
              ListTile(
                  title: Text(
                    'Hey Temidayo!',
                    style: TextStyle(
                        //fontWeight: FontWeight.w500,
                        fontFamily: 'MPLUSRounded1c',
                        fontSize: 20.0,
                        color: Colors.white.withOpacity(0.6)),
                  ),
                  subtitle: Text(
                    'What would you like to watch today?',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontFamily: 'MPLUSRounded1c',
                      fontSize: 26.0,
                      color: Colors.white,
                    ),
                  )),
              SizedBox(
                height: 30,
              ),
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(60))),
                  height: _height / 1.41,
                  child:  ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(top: 55.0, left: 21.0),
                  child: Container(
                    height: 180,
                    color: Colors.white,
                    child: ListView.builder(
                      // physics: AlwaysScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: getAllData().length,
                      itemBuilder: (BuildContext context, int index) {
        
                      return makeCard(getAllData()[index]);
                      },
                    ),
                  ),
                ),
              ),
                ),
              ),
             
            ],
          ),
        ),
        backgroundColor: Colors.black);
  }
}
