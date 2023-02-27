import 'package:flutter/material.dart';

class Entrada extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(itemBuilder: (context, index) {
        return ListTile(
          title: Text("Entrada 24/02"),
          trailing: Text("RS25"),
          leading: Icon(Icons.money),
        );
      }),
    );
  }
}
