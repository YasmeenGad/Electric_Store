import 'package:flutter/material.dart';

import '../../constants.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
    required this.size,
    this.image,
  });

  final Size size;
  final image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      height: size.width * 0.8,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: size.width * 0.7,
            width: size.width * 0.7,
            decoration:
                BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          ),
          Image.asset(
            image,
            height: size.height * .75,
            width: size.width * 0.75,
          ),
        ],
      ),
    );
  }
}
