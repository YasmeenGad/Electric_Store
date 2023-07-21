import 'package:electrical_store/constants.dart';
import 'package:electrical_store/widget/details_screen/details_body.dart';
import 'package:flutter/material.dart';

import '../../models/products.dart';

class DettailScreen extends StatelessWidget {
  final product;
  const DettailScreen({super.key, this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        leading: IconButton(
          padding: EdgeInsets.only(left: kDefaultPadding),
          icon: Icon(
            Icons.arrow_back,
            color: kPrimaryColor,
            size: 35,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "back",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: DetailsBody(
        product: product,
      ),
    );
  }
}
