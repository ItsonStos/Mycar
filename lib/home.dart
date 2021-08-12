import 'package:flutter/material.dart';
import 'package:mycar/telas/controle.dart';
import 'package:mycar/telas/mais.dart';
import 'package:mycar/telas/relatorio.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _indiceAtual = 1;

  @override
  Widget build(BuildContext context) {

    List<Widget> telas = [
      Relatorio(),
      Controle(),      
      Mais()
    ];

   String mudarValor;
   List novoVeiculo = [
      ' + Novo Carro',
    ];

    

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("MyCar"),
        actions: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: DropdownButton(            
            dropdownColor: Colors.black,
            icon: Icon(Icons.arrow_drop_down_circle_outlined),
            isExpanded: false,
            style: TextStyle(
              color: Colors.white,

            ),
            hint: Text(
              'Selecione o veículo',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
              ),
            items: novoVeiculo.map((veiculo){
              return DropdownMenuItem(
                value: veiculo,
                child: Text(veiculo),
                );
            }).toList(),
            value: mudarValor, 
            onChanged: (indice){
              setState(() {
                mudarValor = indice;
              });
            }
            ),
        )],
      ),
      body: telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        onTap: (indice){
          setState(() {
            _indiceAtual = indice;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.stacked_bar_chart),
            title: Text('Relatório')
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.speed),
            title: Text('Controle')
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            title: Text('Mais')
            ),
          ]),
    );
  }
}