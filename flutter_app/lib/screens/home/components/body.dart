import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';
import 'package:flutter_app/screens/home/components/feature_plant.dart';
import 'package:flutter_app/screens/home/components/recomend_plants.dart';
import 'package:flutter_app/screens/home/components/title_with_more_button.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          Container(
            margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: TitleWithMoreButton(
              title: "Recomended",
              press: () {},
            ),
          ),
          RecomendPlants(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: TitleWithMoreButton(
              title: "Featured Plants",
              press: () {},
            ),
          ),
          FeaturePlants(),
        ],
      ),
    );
  }
}


