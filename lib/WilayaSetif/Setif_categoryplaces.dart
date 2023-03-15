import 'package:flutter/material.dart';
import 'package:tourisme_app/app_data.dart';
import 'package:tourisme_app/models/wilayatrip.dart';

import 'Setif_trip_item.dart';


class SetifCategoryPlaces extends StatefulWidget {
  static const String routPage = 'Setifcategoryplaces';

  @override
  State<SetifCategoryPlaces> createState() => _SetifCategoryPlacesState();
}

class _SetifCategoryPlacesState extends State<SetifCategoryPlaces> {
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
    displayTrips = Setif_Trips_data.where((trip) {
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
