import 'package:flutter/material.dart';

import '../../constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    this.itemindex,
    this.product,
    this.press,
    super.key,
  });
  final itemindex;
  final product;
  final press;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: kDefaultPadding / 2, horizontal: kDefaultPadding),
      height: 190,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 25,
                      offset: Offset(0, 15),
                    ),
                  ]),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                height: 160,
                width: 200,
                child: Image.asset(product.image),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                height: 136,
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    ListTile(
                      title: Text(
                        product.title,
                        style: TextStyle(fontSize: kDefaultPadding),
                      ),
                      subtitle: Text(product.subtitle),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, bottom: 15, left: 15),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: kDefaultPadding * 1.5,
                          vertical: kDefaultPadding / 5,
                        ),
                        decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Text("Price: \$${product.price}"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
