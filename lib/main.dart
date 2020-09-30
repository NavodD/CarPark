import 'package:carPark/screens/add_places_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/carPark_list.dart';
import './screens/places_list_screen.dart';
import './screens/add_places_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: CarParkList(),
      child: MaterialApp(
        title: 'CarPark',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          primaryColor: Colors.amber,
        ),
        home: PlacesListScreen(),
        routes: {
          AddPlaceScreen.routeName: (ctx) => AddPlaceScreen(),
        },
      ),
    );
  }
}
