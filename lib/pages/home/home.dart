import 'package:caixa_simbiose/pages/caixa/caixa.dart';
import 'package:caixa_simbiose/pages/entrada/entrada.dart';
import 'package:caixa_simbiose/pages/saida/saida.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Controle de caixa"),
        leading: Image.asset("lib/assets/images/logo-simbiose.png"),
      ),
      floatingActionButton:
        _currentIndex == 1 || _currentIndex == 2 ? FloatingActionButton.extended(
        onPressed: () {},
        icon: Icon(Icons.add),
        label: Text("Adicionar item"),
      ) : null,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          fixedColor: Colors.white,
          unselectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.inbox), label: "Caixa"),
            BottomNavigationBarItem(icon: Icon(Icons.inbox), label: "Entrada"),
            BottomNavigationBarItem(icon: Icon(Icons.outbox), label: "Saída"),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: "Mensal"),
          ]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(_currentIndex == 0)
              Caixa(),
            if(_currentIndex == 1)
              Entrada(),
            if(_currentIndex == 2)
              Saida(),
          ],
        ),
      ),
    );
  }
}
