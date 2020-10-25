import 'package:flutter/material.dart';
import 'package:furniture_app_ui/models/Product.dart';
import 'package:furniture_app_ui/screens/components/title_text.dart';
import 'package:furniture_app_ui/screens/home/components/categories.dart';
import 'package:furniture_app_ui/screens/home/components/product_card.dart';
import 'package:furniture_app_ui/screens/home/components/recommand_products.dart';
import 'package:furniture_app_ui/services/fetCategories.dart';
import 'package:furniture_app_ui/services/fetchProducts.dart';
import 'package:furniture_app_ui/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;

    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.all(defaultSize * 2),
                child: TitleText(title: "Brower By Categories")),
            FutureBuilder(
              future: fetchCategories(),
              builder: (context, snapshot) => snapshot.hasData
                  ? Categories(categories: snapshot.data)
                  : Center(
                      child: Image.asset("assets/ripple.gif"),
                    ),
            ),
            Divider(
              height: 5,
            ),
            Padding(
                padding: EdgeInsets.all(defaultSize * 2),
                child: TitleText(
                  title: "Recommands For you",
                )),
            FutureBuilder(
              future: fetchProducts(),
              builder: (context, snapshot) => snapshot.hasData
                  ? RecommandProducts(products: snapshot.data)
                  : Center(
                child: Image.asset("assets/ripple.gif"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

