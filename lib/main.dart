import 'package:flutter/material.dart';

void main() => runApp(Foodie());

class Foodie extends StatelessWidget {
  const Foodie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Foodie'),
        ),
        body: Container(),
      ),
    );
  }
}
