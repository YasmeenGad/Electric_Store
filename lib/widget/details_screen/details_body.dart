import 'package:electrical_store/constants.dart';
import 'package:electrical_store/widget/details_screen/product_image.dart';
import 'package:flutter/material.dart';

import 'color_dot.dart';

class DetailsBody extends StatelessWidget {
  final product;
  const DetailsBody({super.key, this.product});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          width: double.infinity,
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ProductImage(
                  size: size,
                  image: product.image,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ColorDot(
                      fillColo: kTextLightColor,
                      isselected: true,
                    ),
                    ColorDot(
                      fillColo: Colors.blue,
                      isselected: false,
                    ),
                    ColorDot(
                      fillColo: Colors.red,
                      isselected: false,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  product.title,
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Text(
                "Price: \$${product.price}",
                style: TextStyle(fontSize: 20, color: kSecondaryColor),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
          child: Text(
            product.description,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        )
      ],
    );
  }
}
