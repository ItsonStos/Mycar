import 'package:flutter/material.dart';

class Relatorio extends StatefulWidget {
  

  @override
  _RelatorioState createState() => _RelatorioState();
}

class _RelatorioState extends State<Relatorio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center (
        child: Text(
          "Relatório",
          style: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
          )
          ),
        ),
    );
  }
}