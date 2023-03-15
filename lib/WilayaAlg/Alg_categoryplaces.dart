import 'package:flutter/material.dart';
import 'package:tourisme_app/app_data.dart';
import 'package:tourisme_app/models/wilayatrip.dart';
import 'alg_trip_item.dart';

class AlgCategoryPlaces extends StatefulWidget {
  static const String routPage = 'algcategoryplaces';

  @override
  State<AlgCategoryPlaces> createState() => _AlgCategoryPlacesState();
}

class _AlgCategoryPlacesState extends State<AlgCategoryPlaces> {
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
    displayTrips = Alg_Trips_data.where((trip) {
      return trip.categories.contains(categoryid);
    }).toList(); 
    super.didChangeDependencies();
  }

  void _removeTrip(String tripId) {
    setState(() {
      displayTrips.removeWhere((trip) => trip.id == tripId);
    });
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
