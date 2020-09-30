import 'package:carPark/providers/carPark_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'add_places_screen.dart';

class PlacesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Park List'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.of(context).pushNamed(AddPlaceScreen.routeName);
              }),
        ],
      ),
      body: FutureBuilder(
        future: Provider.of<CarParkList>(context, listen: false)
            .fetchAndSetPlaces(),
        builder: (ctx, snapshot) => snapshot.connectionState ==
                ConnectionState.waiting
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Consumer<CarParkList>(
                child: Center(
                  child: const Text('Got no Parking yet'),
                ),
                builder: (ctx, carParkList, ch) => carParkList.items.length <= 0
                    ? ch
                    : ListView.builder(
                        itemCount: carParkList.items.length,
                        itemBuilder: (ctx, i) => ListTile(
                              leading: CircleAvatar(
                                backgroundImage:
                                    FileImage(carParkList.items[i].image),
                              ),
                              title: Text(carParkList.items[i].title),
                              onTap: () {},
                            )),
              ),
      ),
    );
  }
}
