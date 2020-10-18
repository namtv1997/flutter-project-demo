import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'Product.dart';
import 'ProductPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World Demo Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);

  final items = Product.getProducts();

  void _showDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Message"),
            content: Text("hello"),
            actions: [
              FlatButton(
                child: Text("close"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            var scale = 1.1;
            return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                return ListTile(
                  title: Transform.scale(
                      scale: scale,
                      child: Container(
                        child: ProductBox(item: items[index]),
                      )),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ProductPage(item: items[index])));
                  },
                );
//                return GestureDetector(
//                  child: ProductBox(item: items[index]),
//                  onTap: () {
//                    setState((){
//                      scale = scale == 1 ? 0.9 : 1;
//                    });
//                    Navigator.push(
//                        context,
//                        MaterialPageRoute(
//                            builder: (context) =>
//                                ProductPage(item: items[index]))
//                    );
//                  },
//                );
              },
            );
          }),
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({Key key, this.item}) : super(key: key);
  final Product item;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.asset("assets/" + item.image),
              Expanded(
                  child: Container(
                child: ScopedModel<Product>(
                    model: item,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                item.name,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            padding: EdgeInsets.only(left: 10)),
                        Container(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                item.description,
                                style: TextStyle(fontStyle: FontStyle.italic),
                              ),
                            ),
                            padding: EdgeInsets.only(left: 10)),
                        Container(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Price: " + item.price.toString(),
                                style: TextStyle(fontStyle: FontStyle.normal),
                              ),
                            ),
                            padding: EdgeInsets.only(left: 10)),
                        ScopedModelDescendant<Product>(
                          builder: (context, child, item) {
                            return RatingBox(
                              item: item,
                            );
                          },
                        )
                      ],
                    )),
              ))
            ])));
  }
}

class RatingBox extends StatelessWidget {
  RatingBox({Key key, this.item}) : super(key: key);
  final Product item;

  @override
  Widget build(BuildContext context) {
    double _size = 20;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          child: Icon(
            item.rating >= 1 ? Icons.star : Icons.star_border,
            color: Colors.red,
            size: _size,
          ),
          onTap: () => item.updateRating(1),
        ),

        GestureDetector(
          child: Icon(
            item.rating >= 2 ? Icons.star : Icons.star_border,
            color: Colors.red,
            size: _size,
          ),
          onTap: () => item.updateRating(2),
        ),

        GestureDetector(
          child: Icon(
            item.rating >= 3 ? Icons.star : Icons.star_border,
            color: Colors.red,
            size: _size,
          ),
          onTap: () => item.updateRating(3),
        )

//        Container(
//          child: IconButton(
//            icon: (_rating >= 1 ? Icon(Icons.star, ) : Icon(Icons.star_border,)),
//            color: Colors.red,
//            onPressed: _setRatingAsOne,
//            iconSize: _size,
//          ),
//        ),
//
//        Container(
//          child: IconButton(
//            icon: (_rating >= 2 ? Icon(Icons.star, ) : Icon(Icons.star_border,)),
//            color: Colors.orange,
//            onPressed: _setRatingAsTwo,
//            iconSize: _size,
//          ),
//        ),
//
//        Container(
//          child: IconButton(
//            icon: (_rating >= 3 ? Icon(Icons.star,) : Icon(Icons.star_border,)),
//            color: Colors.green,
//            onPressed: _setRatingAsThree,
//            iconSize: _size,
//          ),
//        )
      ],
    );
  }
}
