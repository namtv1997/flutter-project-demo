import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';

class TitleWithMoreButton extends StatelessWidget {
  const TitleWithMoreButton({
    Key key,
    this.press,
    this.title
  }) : super(key: key);
  final String title;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline6.copyWith(
                color: Colors.black, fontWeight: FontWeight.bold),
          ),
          flex: 1,
        ),
        FlatButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
          ),
          color: kPrimaryColor,
          onPressed: press,
          child: Text("More", style: TextStyle(color: Colors.white),),
        )
      ],
    );
  }
}