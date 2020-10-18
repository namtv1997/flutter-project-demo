import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ImageBanner.dart';
import 'Product.dart';

class ProductPage extends StatelessWidget {
  ProductPage({Key key, this.item}) : super(key: key);
  final Product item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
//        leading: Padding(
//          padding: EdgeInsets.only(top: 18, bottom: 18),
//          child: GestureDetector(
//            child: Image.asset(
//              "assets/back.png",
//            ),
//            onTap: () => Navigator.of(context).pop(),
//          ),
//        ),
        title: Text(this.item.name),
        centerTitle: true,
      ),
      body: Container(
        child: Column(children: [
          ImageBanner(item.image),
          Expanded(
              child: Container(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(3),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            item.name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(3),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            item.description,
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 3, left: 3, bottom: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Price: " + item.price.toString(),
                            style: TextStyle(fontStyle: FontStyle.normal),
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              item.rating >= 1 ? Icons.star : Icons.star_border,
                              color: Colors.red,
                            ),
                            Icon(
                              item.rating >= 2 ? Icons.star : Icons.star_border,
                              color: Colors.red,
                            ),
                            Icon(
                              item.rating >= 3 ? Icons.star : Icons.star_border,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      )
                    ],
                  )
              )
          )
        ]),
      ),
    );
  }
}
