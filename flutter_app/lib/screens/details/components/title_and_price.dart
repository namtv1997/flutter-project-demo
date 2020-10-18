import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice(
      {Key key, this.title, this.country, this.price}) : super(key: key);

  final String title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding / 2),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: "$title\n".toUpperCase(),
                    style: Theme.of(context).textTheme.headline4.copyWith(
                        color: kTextColor, fontWeight: FontWeight.bold
                    )),
                TextSpan(
                  text: "$country".toUpperCase(),
                  style: TextStyle(
                    fontSize: 20,
                    color: kPrimaryColor.withOpacity(0.5),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Text(
            "\$$price",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: kPrimaryColor),
          )
        ],
      ),
    );
  }
}