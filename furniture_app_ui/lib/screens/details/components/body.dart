import 'package:flutter/material.dart';
import 'package:furniture_app_ui/constants.dart';
import 'package:furniture_app_ui/models/Product.dart';
import 'package:furniture_app_ui/screens/details/components/product_description.dart';
import 'package:furniture_app_ui/screens/details/components/product_infor.dart';
import 'package:furniture_app_ui/size_config.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: SizedBox(
          width: double.infinity,
          height:SizeConfig.orientaion == Orientation.landscape ? SizeConfig.screenWith: SizeConfig.screenHeight - AppBar().preferredSize.height,
          child: Stack(
            children: [
              ProductInfor(product: product),
              Positioned(
                top: defaultSize * 37.5,
                left: 0,
                right: 0,
                child: ProductDescription(product: product),
              ),
              Positioned(
                right: -defaultSize * 3,
                top: defaultSize * 9.5,
                child: Hero(
                  tag: product.id,
                  child: Image.network(
                    product.image,
                    fit: BoxFit.cover,
                    height: defaultSize * 37.8,
                    width: defaultSize * 36.4,
                  ),
                ),
              )
            ],
          )),
    );
  }
}
