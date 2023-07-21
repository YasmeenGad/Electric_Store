import 'package:electrical_store/constants.dart';
import 'package:electrical_store/widget/details_screen/details_screen.dart';
import 'package:flutter/material.dart';

import '../models/products.dart';
import 'home/product_card.dart';

class HomeBody extends StatelessWidget {
  final product;
  const HomeBody({super.key, this.product});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                  ),
                ),
                ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return ProductCard(
                        itemindex: index,
                        product: products[index],
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DettailScreen(
                                        product: products[index],
                                      )));
                        },
                      );
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
