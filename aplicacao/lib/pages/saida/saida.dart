import 'package:flutter/material.dart';

class Saida extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(itemBuilder: (context, index) {
        return ListTile(
          title: Text("Saída"),
        );
      }),
    );
  }
}
