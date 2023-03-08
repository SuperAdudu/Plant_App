import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/detail/components/IconCard.dart';

class ImageAndIcon extends StatelessWidget {
  const ImageAndIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.8,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                    ),
                  ),
                  const Spacer(),
                  const IconCard(icon: "assets/icons/sun.svg"),
                  const SizedBox(height: 35),
                  const IconCard(icon: "assets/icons/icon_2.svg"),
                  const SizedBox(height: 35),
                  const IconCard(icon: "assets/icons/icon_3.svg"),
                  const SizedBox(height: 35),
                  const IconCard(icon: "assets/icons/icon_4.svg"),
                ],
              ),
            ),
          ),
          Container(
            height: size.height * 0.8,
            width: size.width * 0.75,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(60),
                bottomLeft: Radius.circular(60),
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: kPrimaryColor.withOpacity(0.35),
                ),
              ],
              image: const DecorationImage(
                alignment: Alignment.centerLeft,
                fit: BoxFit.cover,
                image: AssetImage("assets/images/img.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
