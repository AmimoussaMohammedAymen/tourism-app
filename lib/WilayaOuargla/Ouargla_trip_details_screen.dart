// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:tourisme_app/app_data.dart';
import 'package:tourisme_app/models/wilayatrip.dart';

class OuarglaTripDetailsScreen extends StatelessWidget {
  static const screenRout = '/Ouargla-trip-details';
  final Function manageFavorite;
  final Function isFavorite;

  OuarglaTripDetailsScreen(this.manageFavorite, this.isFavorite);

  Widget buildSectionTitle(String title) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      alignment: Alignment.topLeft,
      child: Text(
        title,
        style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.w500, color: Colors.blue),
      ),
    );
  }

  Widget buildListViewContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      height: 200,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: child,
    );
  }

  @override
  Widget build(BuildContext ctx1) {
    final tripId = ModalRoute.of(ctx1)?.settings.arguments as String;
    final selectedTrip = Ouargla_Trips_data.firstWhere(((trip) => trip.id == tripId));
    return Scaffold(
        appBar: AppBar(
          title: Text('${selectedTrip.title}'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                child: Image.network(
                  selectedTrip.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              buildSectionTitle('Activities'),
              buildListViewContainer(
                ListView.builder(
                  itemCount: selectedTrip.activities.length,
                  itemBuilder: (context, index) => Card(
                    elevation: 0.3,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Text(selectedTrip.activities[index]),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              buildSectionTitle('Daily Program'),
              buildListViewContainer(
                ListView.builder(
                    itemCount: selectedTrip.program.length,
                    itemBuilder: (context, index) => Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                child: Text('day ${index + 1}'),
                              ),
                              title: Text(selectedTrip.program[index]),
                            ),
                            Divider(),
                          ],
                        )),
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            isFavorite(tripId) ? Icons.star : Icons.star_border,
          ),
          onPressed: () => manageFavorite(tripId),
        ));
  }
}
