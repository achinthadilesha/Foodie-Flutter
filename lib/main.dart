import 'package:flutter/material.dart';

import './screens/catergories_screen.dart';

void main() => runApp(Foodie());

class Foodie extends StatelessWidget {
  const Foodie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foodie',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: CategoroiesScreen(),
    );
  }
}
