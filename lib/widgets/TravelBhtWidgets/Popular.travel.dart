import 'package:athang_v01/models/Places.model.dart';
import 'package:athang_v01/widgets/TravelBhtWidgets/PopularCard.travel.dart';
import 'package:flutter/material.dart';


class PopularTravel extends StatelessWidget {
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
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Places',
                  style: TextStyle(fontSize: 24),
                ),
                Text('View more'),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:8),
            padding: EdgeInsets.only(left:16),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: placesList.map((PlaceCardModel el){
                  return  PopularCardTravel(place:el);
                }).toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}