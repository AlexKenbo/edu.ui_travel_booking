import 'package:flutter/material.dart';
import 'package:ui_travel_booking/models/place_model.dart';

class PlaceScreen extends StatefulWidget {
  final Place place;
  PlaceScreen({@required this.place});

  _PlaceScreenState createState() => _PlaceScreenState();
}

class _PlaceScreenState extends State<PlaceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Hero(
                  tag: widget.place.imageUrl,
                  child: Container(
                    width: double.infinity,
                    height: 600,
                    decoration: BoxDecoration(
                      color: Color(0xFFe5f2ff),
                      image: DecorationImage(
                          image: AssetImage(widget.place.imageUrl)),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(Icons.arrow_back_ios),
                        color: Colors.black,
                      ),
                      IconButton(
                        onPressed: () => print('Menu'),
                        icon: Icon(Icons.menu),
                        color: Colors.black,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              height: 400,
              width: double.infinity,
              transform: Matrix4.translationValues(0, -40, 0),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(40)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('${widget.place.city}, ${widget.place.country}',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.event_available,
                          size: 60,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Tour of ${widget.place.city}',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            Text('Duration: 6 hours',
                                style: TextStyle(
                                  fontSize: 18,
                                ))
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.all(20),
        height: 130,
        decoration: BoxDecoration(
          color: Color(0xFF1d4383),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('${widget.place.properties}',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
                Text('Properties Found',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ))
              ],
            ),
            FlatButton(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              color: Color(0xFFdff1ff),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text('See All',
                  style: TextStyle(
                      color: Color(0xFF309df1),
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.pop(context),
            )
          ],
        ),
      ),
    );
  }
}
