import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop_app/contants.dart';
import 'package:online_shop_app/models/product.dart';
import 'package:online_shop_app/screens/details/components/color_and_size.dart';
import 'package:online_shop_app/screens/details/components/counter_with_fav_btn.dart';
import 'package:online_shop_app/screens/details/components/description.dart';
import 'package:online_shop_app/screens/details/components/product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPaddin,
                      right: kDefaultPaddin),
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      Description(product: product),
                      CounterWithFavBtn(),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: kDefaultPaddin),
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                              width: 58,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  border: Border.all(
                                    color: product.color,
                                  )
                              ),
                              child: IconButton(
                                  icon: SvgPicture.asset(
                                      "assets/icons/add_to_cart.svg"),
                                  onPressed: () {}),
                            ),
                            SizedBox(width: kDefaultPaddin,),
                            Expanded(
                              child: SizedBox(
                                height: 50,
                                child: FlatButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18)
                                  ),
                                  onPressed: (){},
                                  color: product.color,
                                  child: Text("Buy Now", style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                  ),),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
