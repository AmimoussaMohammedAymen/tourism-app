import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';

class CardScreen extends StatelessWidget {
  static const screenRoute = '/agences2';
  final List<String> cardTitles = [
    'agence 1',
    'agence 2',
    'agence 3',
    'agence 4'
  ];
  final List<String> cardSubtitles = [
    'Subtitle 1',
    'Subtitle 2',
    'Subtitle 3',
    'Subtitle 4'
  ];
  final List<IconData> cardIcons = [
    Icons.ac_unit,
    Icons.access_alarm,
    Icons.accessibility_new,
    Icons.accessible_forward
  ];
  final List<String> cardImages = [
    'https://images.unsplash.com/photo-1678481645061-6d32b3daffc7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=900&q=60',
    'https://images.unsplash.com/photo-1678644897769-8eeaa24b1980?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=900&q=60',
    'https://images.unsplash.com/photo-1678542800290-f03137472373?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMnx8fGVufDB8fHx8&auto=format&fit=crop&w=900&q=60',
    'https://images.unsplash.com/photo-1678614034663-f2518bf244c2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMnx8fGVufDB8fHx8&auto=format&fit=crop&w=900&q=60',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text('National Tourism Agences'),
      ),
      body: ListView.builder(
        itemCount: cardTitles.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              //leading: Icon(cardIcons[index]),
              leading: Image.network(
                cardImages[index],
                width: 80,
              ),
              title: Text(
                cardTitles[index],
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              //subtitle: Text(cardSubtitles[index]),
              subtitle: Text(''),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      title: cardTitles[index],
                      subtitle: cardSubtitles[index],
                      //icon: cardIcons[index],
                      imgurl: cardImages[index],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final String title;
  final String subtitle;
  //final IconData icon;
  final String imgurl;

  DetailScreen(
      {required this.title, required this.subtitle, required this.imgurl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Screen'),
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Icon(
            //  icon,
            //  size: 100,
            //),
            Image.network(
              imgurl,
              height: 400,
            ),
            SizedBox(height: 20),
            Text(
              title,
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 10),
            Text(
              subtitle,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
