import 'package:athang_v01/models/Places.model.dart';
import 'package:athang_v01/screen/TravelBhtApp/Details.travel.dart';
import 'package:flutter/material.dart';

class PopularCardTravel extends StatelessWidget {
  PlaceCardModel place;

  PopularCardTravel({required this.place});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          // the place variable is received from the popular places component is being
          // passed down to details travel while navigating in the line below
          // since the value received is based on PlaceCardModel, the format that detail
          // travel receives the variable in, we can directly pass it into the route
          MaterialPageRoute(builder: (context) => DetailsTravel(place: place,)),
        );
      },
      child: Container(
        height: 300,
        width: 400,
        alignment: Alignment.bottomCenter,
        margin: EdgeInsets.only(right: 8),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                place.img,
              ),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(16),
          color: Colors.blueAccent,
        ),
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(0, 0, 0, .2)),
          width: double.infinity,
          padding: EdgeInsets.all(16),
          height: 100,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        place.title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.room,
                            color: Colors.white,
                          ),
                          Text(
                            place.description,
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow),
                  Text(
                    '4.7',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}