import 'package:flutter/material.dart';
import 'package:test_1/ui/home.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }

}
