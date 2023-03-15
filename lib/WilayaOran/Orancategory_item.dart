// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'Oran_categoryplaces.dart';

class OrancategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  const OrancategoryItem(
      {required this.id, required this.title, required this.imageUrl});

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(OranCategoryPlaces.routPage, arguments: {
      'id': id,
      'title': title,
    });
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: InkWell(
        onTap: () => selectCategory(context),
        splashColor: Color.fromARGB(255, 219, 86, 76),
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            Image.network(
              imageUrl,
              height: 250,
              fit: BoxFit.cover,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.black.withOpacity(0.4)),
            )
          ],
        ),
      ),
    );
  }
}
