import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/detail/DetailScreen.dart';

class RecomsPlant extends StatelessWidget {
  const RecomsPlant({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          RecomPlantCard(
            image: "assets/images/image_1.png",
            name: "Samantha",
            country: "Russia",
            price: 440,
          ),
          RecomPlantCard(
            image: "assets/images/image_2.png",
            name: "Starfield",
            country: "Russia",
            price: 540,
          ),
          RecomPlantCard(
            image: "assets/images/image_3.png",
            name: "Nicuzo",
            country: "Russia",
            price: 640,
          ),
        ],
      ),
    );
  }
}

class RecomPlantCard extends StatelessWidget {
  const RecomPlantCard({
    super.key,
    required this.image,
    required this.name,
    required this.country,
    required this.price,
  });
  final String image, name, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(right: 10, left: 10, bottom: 40),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => DetailScreen()));
            },
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  )
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: "$name\n".toUpperCase(),
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      TextSpan(
                        text: "$country".toUpperCase(),
                        style: TextStyle(color: kPrimaryColor.withOpacity(0.5)),
                      ),
                    ]),
                  ),
                  const Spacer(),
                  Text(
                    "\$$price",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
