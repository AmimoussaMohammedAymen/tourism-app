// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class EmptyWilaya extends StatelessWidget {
  const EmptyWilaya({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      //body: Center(child: Text('Your wilaya still empty we are working on it'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              'https://cdn-icons-png.flaticon.com/128/5130/5130142.png',
              width: 200.0,
              height: 200.0,
            ),
            //SizedBox(height: 5),
            Text(
              'Your wilaya still empty we are working on it',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
