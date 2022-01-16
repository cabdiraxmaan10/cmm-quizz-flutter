import 'package:flutter/material.dart';

class N extends StatelessWidget {
  String? name;
  N(this.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(name.toString())),
    );
  }
}
