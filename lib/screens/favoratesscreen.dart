// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../models/wilayatrip.dart';
import '../widgets/trip_item.dart';

class FavoratesScreen extends StatelessWidget {
  final List<Trip> favoritesTrips;

  const FavoratesScreen(this.favoritesTrips);
  @override
  Widget build(BuildContext context) {
    if (favoritesTrips.isEmpty) {
      return Center(
        child: Text('this is the screen of faorates'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return TripItem(
            id: favoritesTrips[index].id,
            title: favoritesTrips[index].title,
            imageUrl: favoritesTrips[index].imageUrl,
            duration: favoritesTrips[index].duration,
            season: favoritesTrips[index].season,
            tripType: favoritesTrips[index].tripType,
            //removeItem: _removeTrip,
          );
        },
        itemCount: favoritesTrips.length,
      );
    }
  }
}
