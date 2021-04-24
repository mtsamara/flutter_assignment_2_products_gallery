import 'package:flutter/material.dart';

import 'GalleryDetailedCardWidget.dart';
import 'GalleryWidget.dart';
import 'SliderWidget.dart';
import 'GalleryCardWidget.dart';

void main() {
  runApp(MaterialApp(
    title: 'Assignment 2',
    home: GalleryPage(),
  ));
}

class Product {
  String image;
  String description;

  Product({this.image, this.description});
}

class GalleryPage extends StatelessWidget {
  List<Product> products = [
    Product(image: 'assets/images/blue.jpg', description: 'Blue Clothes'),
    Product(image: 'assets/images/red.jpg', description: 'Red Clothes'),
    Product(image: 'assets/images/green.jpg', description: 'Green Clothes'),
    Product(image: 'assets/images/yellow.jpg', description: 'Yellow Clothes')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: Text('Shopping Gallery'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  SliderWidget(
                      heading: 'shopping',
                      description: '',
                      imageURL: 'assets/images/clothes.jpg'),
                  SliderWidget(
                      heading: 'shopping',
                      description:
                          'Dummy Shopping with our App!! Dummy Dummy Shopping!!',
                      imageURL: 'assets/images/clothes.jpg'),
                  SliderWidget(
                      heading: 'shopping',
                      description: '',
                      imageURL: 'assets/images/clothes.jpg'),
                  SliderWidget(
                      heading: 'shopping',
                      description:
                          'Dummy Shopping with our App!! Dummy Dummy Shopping!!',
                      imageURL: 'assets/images/clothes.jpg'),
                ]),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 25, 10, 5),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Categories',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: products
                      .map((e) => GalleryWidget(
                          imageURL: e.image, imageDesc: e.description))
                      .toList(),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 25, 10, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top Selling',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'See More',
                      style: TextStyle(fontSize: 10, color: Colors.blueAccent),
                      //textAlign: TextAlign.end,
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: products
                      .map((e) => GalleryCardWidget(
                            imageURL: 'assets/images/tie.jpeg',
                          ))
                      .toList(),
                ),
              ),
              Container(
                //color: Colors.blueAccent,
                margin: EdgeInsets.fromLTRB(10, 25, 10, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Recently Added',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'See More',
                      style: TextStyle(fontSize: 10, color: Colors.blueAccent),
                      //textAlign: TextAlign.end,
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                    children: products
                        .map((e) => GalleryDetailedCardWidget(
                              e.image,
                              heading: 'Dress',
                              description:
                                  'Dummy texting printed into the dummy texting area, another text for dummy texting',
                              price: 250,
                            ))
                        .toList()),
              ),
            ],
          ),
        ));
  }
}
