import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

  List<ProductBox> productBoxItems = [
    ProductBox(
        name: "iPhone",
        description: "iPhone is the stylist phone ever",
        price: 1000,
        image: "anh1.jpg"),
    ProductBox(
        name: "android",
        description: "iPhone is the stylist phone ever",
        price: 1000,
        image: "anh1.jpg")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: productBoxItems.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
                onTap: () {
                  _showDialog(context);
                },
                child: productBoxItems[index]);
          }),
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({Key key, this.name, this.description, this.price, this.image})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.asset("assets/" + image),
              Expanded(
                  child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(name , style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                            padding: EdgeInsets.only(left: 10)
                          ),

                          Container(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(description , style: TextStyle(fontStyle: FontStyle.italic),),
                              ),
                              padding: EdgeInsets.only(left: 10)
                          ),

                          Container(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text( "Price: " + this.price.toString() , style: TextStyle(fontStyle: FontStyle.normal),),
                              ),
                              padding: EdgeInsets.only(left: 10)
                          ),

                          RatingBox()
                        ],
                      )))
            ])));
  }
}

class RatingBox extends StatefulWidget {
  @override
  _RatingBoxState createState() => _RatingBoxState();
}

class _RatingBoxState extends State<RatingBox> {
  int _rating = 0;

  void _setRatingAsOne() {
    setState(() {
      _rating = 1;
    });
  }

  void _setRatingAsTwo() {
    setState(() {
      _rating = 2;
    });
  }

  void _setRatingAsThree() {
    setState(() {
      _rating = 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    double _size = 20;
    print(_rating);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          child: Icon(
            _rating >= 1 ? Icons.star : Icons.star_border,
            color: Colors.red,
            size: _size,
          ),
          onTap: _setRatingAsOne,
        ),

        GestureDetector(
          child: Icon(
            _rating >= 2 ? Icons.star : Icons.star_border,
            color: Colors.red,
            size: _size,
          ),
          onTap: _setRatingAsTwo,
        ),

        GestureDetector(
          child: Icon(
            _rating >= 3 ? Icons.star : Icons.star_border,
            color: Colors.red,
            size: _size,
          ),
          onTap: _setRatingAsThree,
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
