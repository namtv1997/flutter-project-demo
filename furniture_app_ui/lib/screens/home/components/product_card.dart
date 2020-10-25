import 'package:furniture_app_ui/constants.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app_ui/models/Product.dart';
import 'package:furniture_app_ui/screens/components/title_text.dart';
import 'package:furniture_app_ui/size_config.dart';
class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    @required this.product,
    this.press,
  }) : super(key: key);

  final Product product;
  final Function press;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return GestureDetector(
      onTap: press,
      child: Container(
        width: defaultSize * 14.5,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: kSecondaryColor),
        child: AspectRatio(
          aspectRatio: 0.693,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Hero(
                  tag: product.id,
                  child: FadeInImage.assetNetwork(
                    placeholder: "assets/spinner.gif",
                    image: product.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: defaultSize),
                  child: TitleText(title: product.title,)
              ),
              SizedBox(height: defaultSize / 2,),
              Text("\$${product.price}")
            ],
          ),
        ),
      ),
    );
  }
}