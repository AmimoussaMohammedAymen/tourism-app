import 'package:flutter/material.dart';
import 'package:tourisme_app/Agences/agences2.dart';
import 'package:tourisme_app/WilayaAlg/Alg_categoryplaces.dart';
import 'package:tourisme_app/WilayaAlg/Alg_trip_details_screen.dart';
import './WilayaConstantin/Constantine_categoryplaces.dart';
import 'package:tourisme_app/app_data.dart';
import 'package:tourisme_app/models/wilayatrip.dart';
import './screens/categoryplaces.dart';
import 'Agences/agences_screen.dart';
import './screens/tabs_screen.dart';
import './screens/trip_details_screen.dart';
import 'WilayaAnnaba/Annaba_categoryplaces.dart';
import 'WilayaAnnaba/Annaba_trip_details_screen.dart';
import 'WilayaConstantin/Constantine_trip_details_screen.dart';
import 'WilayaOran/Oran_categoryplaces.dart';
import 'WilayaOran/Oran_trip_details_screen.dart';
import 'WilayaOuargla/Ouargla_trip_details_screen.dart';
import 'WilayaOuargla/Ouargla_categoryplaces.dart';
import 'WilayaSetif/Setif_categoryplaces.dart';
import 'WilayaSetif/Setif_trip_details_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  List<Trip> _favoritesTrips = [];

  void _manageFavorites(String tripId) {
    final existingIndex =
        _favoritesTrips.indexWhere((trip) => trip.id == tripId);
    if (existingIndex >= 0) {
      setState(() {
        _favoritesTrips.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _favoritesTrips.add(Trips_data.firstWhere((trip) => trip.id == tripId));
      });
      setState(() {
        _favoritesTrips
            .add(Alg_Trips_data.firstWhere((trip) => trip.id == tripId));
      });
      setState(() {
        _favoritesTrips
            .add(Annaba_Trips_data.firstWhere((trip) => trip.id == tripId));
      });
      setState(() {
        _favoritesTrips.add(
            Constantine_Trips_data.firstWhere((trip) => trip.id == tripId));
      });
      setState(() {
        _favoritesTrips
            .add(Ouargla_Trips_data.firstWhere((trip) => trip.id == tripId));
      });
    }
  }

  bool _isFavorite(String id) {
    return _favoritesTrips.any((trip) => trip.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: 'Tourist App',
      theme: ThemeData(primarySwatch: Colors.blue),
      //home: wilayaScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => TabsScreen(_favoritesTrips),

        //Alg
        AlgTripDetailsScreen.screenRout: (ctx1) =>
            AlgTripDetailsScreen(_manageFavorites, _isFavorite),
        AlgCategoryPlaces.routPage: (context) => AlgCategoryPlaces(),
        //Annaba
        AnnabaTripDetailsScreen.screenRout: (ctx1) =>
            AnnabaTripDetailsScreen(_manageFavorites, _isFavorite),
        AnnabaCategoryPlaces.routPage: (context) => AnnabaCategoryPlaces(),

        //Constantine
        ConstantineTripDetailsScreen.screenRout: (ctx1) =>
            ConstantineTripDetailsScreen(_manageFavorites, _isFavorite),
        ConstantineCategoryPlaces.routPage: (context) =>
            ConstantineCategoryPlaces(),

        //Ouargla
        OuarglaTripDetailsScreen.screenRout: (ctx1) =>
            OuarglaTripDetailsScreen(_manageFavorites, _isFavorite),
        OuarglaCategoryPlaces.routPage: (context) => OuarglaCategoryPlaces(),

        //Oran
        OranTripDetailsScreen.screenRout: (ctx1) =>
            OranTripDetailsScreen(_manageFavorites, _isFavorite),
        OranCategoryPlaces.routPage: (context) => OranCategoryPlaces(),

        //Setif
        SetifTripDetailsScreen.screenRout: (ctx1) =>
            SetifTripDetailsScreen(_manageFavorites, _isFavorite),
        SetifCategoryPlaces.routPage: (context) => SetifCategoryPlaces(),

        CategoryPlaces.routPage: (context) => CategoryPlaces(),
        TripDetailsScreen.screenRout: (context) =>
            TripDetailsScreen(_manageFavorites, _isFavorite),
        AgencesScreen.screenRoute: (context) => AgencesScreen(),
        CardScreen.screenRoute :(context) => CardScreen(),
      },
    );
  }
}
