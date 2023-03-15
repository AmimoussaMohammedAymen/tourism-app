// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tourisme_app/models/wilayatrip.dart';
import 'package:tourisme_app/widgets/app_drawer.dart';
import './Wilaya_screen.dart';
import './favoratesscreen.dart';

class TabsScreen extends StatefulWidget {
  final List<Trip> favoritesTrips;

  TabsScreen(this.favoritesTrips);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  static List<Trip> get favoritesTrips => favoritesTrips;

  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  int _selectedScreenIndex = 0;
  List<Map<String, Object>>? _screens ;

  @override
  void initState() {
    _screens = [
      {
        'Screen': wilayaScreen(),
        'Title': 'Wilaya',
      },
      {
        'Screen': FavoratesScreen(widget.favoritesTrips),
        'Title': 'Favorate Screen',
      },
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _screens![_selectedScreenIndex]['Title'] as String,
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
      drawer: AppDrawer(),
      body: _screens![_selectedScreenIndex]['Screen'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedScreenIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Wilaya',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favorates',
          ),
        ],
      ),
    );
  }
}
