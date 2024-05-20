import 'package:athang_v01/widgets/TravelBhtWidgets/Popular.travel.dart';
import 'package:athang_v01/widgets/TravelBhtWidgets/RecommendedTravel.dart';
import 'package:flutter/material.dart';

class FrontTravel extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('Home Test'),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //call other pages
            PopularTravel(),
            RecommendedTravel()
          ],
        ),

      )
    );
  }
}