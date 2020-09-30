import 'dart:io';
import 'package:flutter/material.dart';

class Location {
  final double longitute;
  final double latitude;
  final String address;

  Location({
    @required this.address,
    @required this.latitude,
    @required this.longitute,
  });
}

class Places {
  final String id;
  final String title;
  final Location location;
  final File image;

  Places({
    @required this.id,
    @required this.title,
    @required this.location,
    @required this.image,
  });
}
