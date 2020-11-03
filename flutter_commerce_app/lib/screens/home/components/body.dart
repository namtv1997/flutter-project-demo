import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_commerce_app/screens/home/components/categories.dart';
import 'package:flutter_commerce_app/screens/home/components/discount_banner.dart';
import 'package:flutter_commerce_app/screens/home/components/home_header.dart';
import 'package:flutter_commerce_app/screens/home/components/popular_product.dart';
import 'package:flutter_commerce_app/screens/home/components/special_offers.dart';
import 'package:flutter_commerce_app/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenWidth(20),
          ),
          HomeHeader(),
          SizedBox(
            height: getProportionateScreenWidth(20),
          ),
          DiscountBanner(),
          Categories(),
          SpecialOffers(),
          SizedBox(
            height: getProportionateScreenWidth(30),
          ),

          PopularProducts(),
          SizedBox(
            height: getProportionateScreenWidth(30),
          ),
        ],
      ),
    ));
  }
}
