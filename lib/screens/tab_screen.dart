import 'package:flutter/material.dart';
import 'package:foodie/screens/catergories_screen.dart';
import 'package:foodie/screens/drawer_screen.dart';
import 'package:foodie/screens/favorite_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  //* ----------------- widget to show in bottom app-bar -----------------
  List<Map<String, dynamic>> _selectedPage = [
    {'screen': CategoroiesScreen(), 'title': 'Meals'},
    {'screen': FavoriteScreen(), 'title': 'Favorite'}
  ];
  //* ----------------- tab item index -----------------
  var _selectPageIndex = 0;

  //* ----------------- on tap function -----------------
  void _selectPage(int index) {
    setState(() {
      _selectPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //* ----------------- app-bar -----------------
      appBar: AppBar(
        title: Text(_selectedPage[_selectPageIndex]['title']),
      ),
      //* ----------------- drawer -----------------
      drawer: DrawerScreen(),
      //* ----------------- body -----------------
      body: _selectedPage[_selectPageIndex]['screen'],
      //* ----------------- bottom app-bar -----------------
      bottomNavigationBar: BottomNavigationBar(
          onTap: _selectPage,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: 'Meals',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorites',
            ),
          ],
          backgroundColor: Theme.of(context).primaryColor,
          selectedItemColor: Theme.of(context).accentColor,
          unselectedItemColor: Colors.white,
          currentIndex: _selectPageIndex,
          type: BottomNavigationBarType.fixed),
    );
  }
}
