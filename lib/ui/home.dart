import 'package:flutter/material.dart';
import 'package:movie_app/model/data.dart';
import 'package:movie_app/utils/colors.dart';
import 'package:movie_app/utils/constant.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    final double _height = MediaQuery.of(context).size.height;
    Widget rateWidget() => Row(
          children: <Widget>[
            Icon(
              Icons.star,
              color: Colors.yellow,
              size: 15,
            ),
            Text(
              "8/10",
              style: TextStyle(
                color: Colors.black.withOpacity(0.4),
                fontFamily: 'MPLUSRounded1c',
                fontWeight: FontWeight.bold,
                fontSize: 10.0,
              ),
              textAlign: TextAlign.left,
              textDirection: TextDirection.ltr,
            ),
          ],
        );

    Container makeCard(Data data) => Container(
          width: _width / 2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            image: DecorationImage(
              image: new AssetImage(data.text4),
              fit: BoxFit.fill,
            ),
          ),
          child: InkWell(
            onTap: () => Navigator.of(context).pushReplacementNamed('/details'),
            child: Card(
              elevation: 8.0,
              color: Colors.black.withOpacity(0.4),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
                child: Stack(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        data.text1,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'MPLUSRounded1c',
                          fontWeight: FontWeight.w800,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 30,
                      child: Text(
                        data.text2,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.6),
                          fontFamily: 'MPLUSRounded1c',
                          fontWeight: FontWeight.bold,
                          fontSize: 10.0,
                        ),
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.ltr,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: 20.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.white.withOpacity(0.2),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: Text(
                            data.text3,
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.w700,
                                fontSize: 13.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
    Container makeNowPlayingCard(Data data) => Container(
          width: _width / 3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            // image: DecorationImage(
            //   image: new AssetImage(data.text4),
            //   fit: BoxFit.fill,
            // ),
          ),
          child: InkWell(
            onTap: () => Navigator.of(context).pushReplacementNamed('/details'),
            child: Card(
              elevation: 8.0,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image(
                      fit: BoxFit.fill,
                      image: AssetImage(data.text4),
                      height: 120,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Text(
                      data.text1,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'MPLUSRounded1c',
                        fontWeight: FontWeight.w800,
                        fontSize: 13.0,
                      ),
                    ),
                    Text(
                      data.text2,
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.4),
                        fontFamily: 'MPLUSRounded1c',
                        fontWeight: FontWeight.bold,
                        fontSize: 10.0,
                      ),
                      textAlign: TextAlign.left,
                      textDirection: TextDirection.ltr,
                    ),
                    rateWidget()
                  ],
                ),
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
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40.0, left: 21.0),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: 10, left: 21, right: 40.0),
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                  labelText: 'Search movies',
                                  labelStyle: TextStyle(
                                    color: Colors.black12,
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0)))),
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          ListTile(
                            title: Container(
                              height: 150,
                              color: Colors.white,
                              child: ListView.builder(
                                // physics: AlwaysScrollableScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemCount: getAllData().length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: makeCard(getAllData()[index]),
                                  );
                                },
                              ),
                            ),
                          ),
                          ListTile(
                            title: Text(
                              'See all',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                // fontWeight: FontWeight.w800,
                                fontFamily: 'MPLUSRounded1c',
                                fontSize: 17.0,
                                color: Colors.black,
                              ),
                            ),
                            leading: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                'Now playing',
                                style: TextStyle(
                                  //fontWeight: FontWeight.w800,
                                  fontFamily: 'MPLUSRounded1c',
                                  fontSize: 17.0,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          ListTile(
                            title: Container(
                              height: 230,
                              color: Colors.white,
                              child: ListView.builder(
                                // physics: AlwaysScrollableScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemCount: getNowPlayingData().length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: makeNowPlayingCard(
                                        getNowPlayingData()[index]),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.black);
  }
}
