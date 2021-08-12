import 'package:flutter/material.dart';

class Mais extends StatefulWidget {
  

  @override
  _MaisState createState() => _MaisState();
}

class _MaisState extends State<Mais> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center (
        child: Text(
          "Mais",
          style: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
          )
          ),
        ),
    );
  }
}