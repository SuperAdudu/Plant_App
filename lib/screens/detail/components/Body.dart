import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/detail/components/Buy.dart';
import 'package:plant_app/screens/detail/components/ImageAndIcon.dart';
import 'package:plant_app/screens/detail/components/TitleAndPrice.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcon(),
          TitleAndPrice(title: "Angelice", country: "Russia", price: 440),
          Buy(),
        ],
      ),
    );
  }
}
