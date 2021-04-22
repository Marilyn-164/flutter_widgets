import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Home Page'),
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
  int count = 0, count2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(elevation: 30.0),
                  onPressed: () {
                    setState(() {
                      count2 += 1;
                    });
                    print('Button Clicked');
                  },
                  child: Text(
                    ' Clickable Button',
                    style: GoogleFonts.roboto(
                      fontSize: 30.0,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      count += 1;
                    });
                  },
                  icon: Icon(Icons.favorite_outline_sharp),
                  iconSize: 100.0,
                  color: Colors.red,
                ),
                Text(
                  '$count',
                  style: GoogleFonts.roboto(fontSize: 50.0),
                ),
                Icon(
                  Icons.umbrella_rounded,
                  color: Colors.pink,
                  size: 24.0,
                ),
                Icon(
                  Icons.audiotrack,
                  color: Colors.green,
                  size: 30.0,
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.blue,
                  size: 36.0,
                ),
              ],
            ),
            SizedBox(
              height: 50.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.umbrella_rounded,
                  color: Colors.pink,
                  size: 24.0,
                ),
                Text(
                  '$count2',
                ),
                Icon(
                  Icons.audiotrack,
                  color: Colors.green,
                  size: 30.0,
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.blue,
                  size: 36.0,
                ),
              ],
            ),
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        splashColor: Colors.amber,
        backgroundColor: Colors.black,
        onPressed: () {
          print('Floating Button Clicked');
        },
        child: Icon(
          Icons.wifi,
          color: Colors.white,
        ),
      ),
    );
  }
}