import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app_ui/constants.dart';
import 'package:furniture_app_ui/models/Product.dart';
import 'package:furniture_app_ui/screens/details/components/body.dart';
import 'package:furniture_app_ui/size_config.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(
        product: product,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/arrow-long-left.svg"),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: [
        Stack(
          children: [
            Container(
              width: 48,
              height: 48,
              child: IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/bag.svg",
                ),
                onPressed: () {},
              ),
            ),
            Positioned(
              top: SizeConfig.defaultSize * 2,
              right: SizeConfig.defaultSize * 0.75,
              bottom: SizeConfig.defaultSize * 0.5,
              child: Container(
                height: SizeConfig.defaultSize * 2,
                width: SizeConfig.defaultSize * 2,

                padding: EdgeInsets.only(
                  top: SizeConfig.defaultSize,
                  left: SizeConfig.defaultSize * 0.5,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimaryColor,
                  border: Border.all(color: kPrimaryColor),
                ),
                child: Text(
                  "1",
                  style: TextStyle(fontSize: SizeConfig.defaultSize * 1.5),
                ),
              ),
            ),
          ],
        ),

        SizedBox(
          width: SizeConfig.defaultSize,
        )
      ],
    );
  }
}
