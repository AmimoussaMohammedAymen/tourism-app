import 'package:flutter/material.dart';

enum Season {
  Winter,
  Spring,
  Summer,
  Autumn,
}

enum TripType {
  Exploration,
  Recovery,
  Activities,
  Therpy,
}

class Trip {
  final String id;
  final String title;
  final String imageUrl;
  final List<String> categories;
  final List<String> program;
  final List<String> activities;
  final int duration;
  final Season season;
  final TripType tripType;
  final bool isInSummer;
  final bool isInWinter;
  final bool isForFamilies;

  const Trip({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.activities,
    required this.program,
    required this.duration,
    required this.season,
    required this.tripType,
    required this.isInSummer,
    required this.isInWinter,
    required this.isForFamilies,
  });
}
