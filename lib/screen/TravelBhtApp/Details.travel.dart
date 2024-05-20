import 'package:athang_v01/models/Places.model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailsTravel extends StatelessWidget {
  PlaceCardModel place;

  DetailsTravel({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(place.title),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 16, left: 16, right: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Image.network(
                    place.img,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8),
                  child: Text(
                    place.title,
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8),
                  child: Text(
                    place.description,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
