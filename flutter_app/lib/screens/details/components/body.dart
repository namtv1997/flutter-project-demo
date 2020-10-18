import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';
import 'package:flutter_app/screens/details/components/image_and_icons.dart';
import 'package:flutter_app/screens/details/components/title_and_price.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(),
          TitleAndPrice(
            title: "Angelica",
            country: "Russia",
            price: 400,
          ),
          SizedBox(height: kDefaultPadding),
          Row(
            children: [
              Container(
                width: size.width / 2,
                height: 84,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20)
                    )
                  ),
                  color: kPrimaryColor,
                  onPressed: (){},
                  child: Text("Buy now",style: TextStyle(
                    color: Colors.white,
                    fontSize: 16
                  ),),
                ),
              ),
              Container(
                width: size.width / 2,
                height: 84,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20)
                      )
                  ),
                  onPressed: (){},
                  child: Text("Description",style: TextStyle(
                      color: Colors.black,
                      fontSize: 16
                  ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}



