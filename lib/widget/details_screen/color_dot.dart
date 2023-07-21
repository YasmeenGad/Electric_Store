import 'package:flutter/material.dart';

import '../../constants.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({
    super.key,
    this.fillColo,
    this.isselected = false,
  });
  final fillColo;
  final isselected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 3),
      padding: EdgeInsets.all(3),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          border: Border.all(
              color: isselected ? kTextLightColor : Colors.transparent),
          shape: BoxShape.circle),
      child: Container(
        decoration: BoxDecoration(shape: BoxShape.circle, color: fillColo),
      ),
    );
  }
}
