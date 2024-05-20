import 'package:flutter/material.dart';
import 'package:athang_v01/models/Places.model.dart';
import 'MediumTravelCard.dart';

class RecommendedTravel extends StatelessWidget {
  List<String> places = ["China", "India", "Indonesia", "Bhutan"];
  List<PlaceCardModel> placesList = [
    PlaceCardModel( img:"https://cdn.pixabay.com/photo/2021/10/24/06/36/druk-wangyal-chortens-6737213_960_720.jpg",
  description: "Place of abot and spirituality",
  title: "Punakha"),
   PlaceCardModel( img:"https://cdn.pixabay.com/photo/2020/11/19/05/44/flags-5757585_960_720.jpg",
  description: "The most revered The Tigeress Nest",
  title: "Paro Taksang"),
   PlaceCardModel( img:"https://cdn.pixabay.com/photo/2022/03/29/07/56/bhutan-7098954_960_720.jpg",
  description: "The Majestic Fortress of Bhutan, place of destination",
  title: "Punakha Dzong"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recommended Places',
                  style: TextStyle(fontSize: 20),
                ),
                Text('View more'),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: Column(
                children: placesList.map((PlaceCardModel el) {
                  return MediumTravelCard(
                      title: el.title, description: el.description, url: el.img,
                      );
                }).toList(),
              ),
            )
          ],
        )
    );
  }
}