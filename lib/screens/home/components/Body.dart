import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/FeaturePlant.dart';
import 'package:plant_app/screens/home/components/RecomsPlant.dart';
import 'package:plant_app/screens/home/components/TitleWithMoreBtn.dart';
import 'package:plant_app/screens/home/components/header_and_searchbox.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      // to scrolling
      child: Column(
        children: [
          HeaderWithSearch(size: size),
          TitleWithButton(title: "Recommend"),
          RecomsPlant(),
          TitleWithButton(title: "Featured Plants"),
          FeaturePlant(),
          SizedBox(height: kDefaultPadding)
        ],
      ),
    );
  }
}
