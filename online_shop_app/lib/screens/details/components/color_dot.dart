import 'package:flutter/material.dart';
import 'package:online_shop_app/contants.dart';

class ColorDot extends StatelessWidget {
  final Color color;
  final bool iSselected;
  const ColorDot({
    Key key, this.color, this.iSselected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.5),
      margin: EdgeInsets.only(
        top: kDefaultPaddin / 4,
        right: kDefaultPaddin / 2,
      ),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
            color: iSselected ? color : Colors.transparent
        ),
      ),
      child: DecoratedBox(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color
          )
      ),
    );
  }
}
