import 'package:flutter/material.dart';
import 'package:foodie/screens/filter_screen.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  Widget _buildListtile(String title, IconData icon, Function handler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          fontFamily: 'RobotoConensed',
        ),
      ),
      onTap: () {
        handler();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: Center(
              child: Text(
                'Cooking Up!',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          _buildListtile(
            'Meals',
            Icons.fastfood,
            () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          _buildListtile(
            'Filter',
            Icons.settings,
            () {
              Navigator.of(context)
                  .pushReplacementNamed(FiltersScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
