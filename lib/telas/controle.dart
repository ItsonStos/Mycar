import 'package:flutter/material.dart';

class Controle extends StatefulWidget {

  @override
  _ControleState createState() => _ControleState();
}

class _ControleState extends State<Controle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListView(
            scrollDirection: Axis.horizontal,
            children: [
             Text("Card")
              ],
          )
        ],
      ),
      
    );
  }
}