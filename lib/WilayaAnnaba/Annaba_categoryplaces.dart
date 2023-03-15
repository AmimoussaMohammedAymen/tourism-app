import 'package:flutter/material.dart';
import 'package:tourisme_app/app_data.dart';
import 'package:tourisme_app/models/wilayatrip.dart';

import 'Annaba_trip_item.dart';

class AnnabaCategoryPlaces extends StatefulWidget {
  static const String routPage = 'annabacategoryplaces';

  @override
  State<AnnabaCategoryPlaces> createState() => _AnnabaCategoryPlacesState();
}

class _AnnabaCategoryPlacesState extends State<AnnabaCategoryPlaces> {
  late String categoryTitle;
  late List<Trip> displayTrips;
  @override
  void initState() {
    //...
    super.initState();
  }

  @override
  void didChangeDependencies() {
    final routeArgument =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryid = routeArgument['id'];
    categoryTitle = routeArgument['title']!;
    displayTrips = Annaba_Trips_data.where((trip) {
      return trip.categories.contains(categoryid);
    }).toList(); 
    super.didChangeDependencies();
  }

  //final String categoryId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return TripItem(
            id: displayTrips[index].id,
            title: displayTrips[index].title,
            imageUrl: displayTrips[index].imageUrl,
            duration: displayTrips[index].duration,
            season: displayTrips[index].season,
            tripType: displayTrips[index].tripType,
            //removeItem: _removeTrip,
          );
        },
        itemCount: displayTrips.length,
      ),
    );
  }
}
