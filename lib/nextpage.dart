import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: AboutScreen(),
  ));
}
class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() {
    return _AboutScreenState();
  }
}
class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About",
          style: TextStyle(color: Colors.cyanAccent, fontWeight: FontWeight.bold),
        ),
        actions: [
        ],
      ),
      body: Container(
        child: Center(
          child: Text("ABOUT BO'LIMI",
            textAlign: TextAlign.center,style:
            DefaultTextStyle.of(context).style.apply(fontSizeFactor: 1.2),


          ),
        ),
      ),
    );
  }
}