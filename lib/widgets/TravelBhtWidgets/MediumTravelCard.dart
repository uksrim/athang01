import 'package:athang_v01/models/Places.model.dart';
import 'package:athang_v01/screen/TravelBhtApp/Details.travel.dart';
import 'package:flutter/material.dart';


class MediumTravelCard extends StatelessWidget {
  String title;
  String url;
  String description;

  MediumTravelCard({
    required this.title,
    this.description = "Basic description",
    this.url =
        "https://cdn.pixabay.com/photo/2023/01/13/14/58/snake-7716269_1280.jpg",
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
           // since the value received is not based on PlaceCardModel,
          // the format that detail
          // travel receives the variable in,
          // and is received in fragments, we must convert the individual data
          // into DetailsTravel receiving format i.e, based on PlaceCardModel before
          // passing into DetailsTravel
          MaterialPageRoute(builder: (context) => DetailsTravel(
            place: PlaceCardModel(
            title: title,
            img: url,
            description: description,
          )
          )),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        child: Row(
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.network(
                url,
                fit: BoxFit.cover,
                height: 100,
                width: 100,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(description),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}