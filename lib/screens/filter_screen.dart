import 'package:flutter/material.dart';
import 'package:foodie/screens/drawer_screen.dart';

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({Key? key}) : super(key: key);

  static const routeName = '/filtersscreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filters'),
      ),
      drawer: DrawerScreen(),
      body: Center(
        child: Text('Filter screen'),
      ),
    );
  }
}
