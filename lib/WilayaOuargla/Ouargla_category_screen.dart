// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tourisme_app/app_data.dart';
import 'package:tourisme_app/widgets/category_item.dart';
import 'dart:ui';

import 'Ouarglacategory_item.dart';


class OuarglaCategoriesScreen extends StatelessWidget {
  const OuarglaCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tourist guide'),
      ),
      body: GridView(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent:
              200, //how many container depends of the size of the phone screen
          childAspectRatio:
              7 / 8, // specifie the width and height of one container
          mainAxisSpacing: 10, //space bitween container  (columns)
          crossAxisSpacing: 10, //space bitween container  (rows)
        ),
        children: Ouargla_Categories_data.map(
          (OuarglacategoryData) => OuarglacategoryItem(
            id: OuarglacategoryData.id,
            title: OuarglacategoryData.title,
            imageUrl: OuarglacategoryData.imageUrl,
          ),
        ).toList(),
      ),
    );
  }
}
