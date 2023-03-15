// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tourisme_app/app_data.dart';

import 'Setifcategory_item.dart';


class SetifCategoriesScreen extends StatelessWidget {
  const SetifCategoriesScreen({super.key});

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
        children: Setif_Categories_data.map(
          (SetifcategoryData) => SetifcategoryItem(
            id: SetifcategoryData.id,
            title: SetifcategoryData.title,
            imageUrl: SetifcategoryData.imageUrl,
          ),
        ).toList(),
      ),
    );
  }
}
