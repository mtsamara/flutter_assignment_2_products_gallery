import 'package:flutter/material.dart';

import 'GalleryWidget.dart';

class GalleryDetailedCardWidget extends StatelessWidget {
  String imageURL;
  String heading;
  String description;
  int price;

  GalleryDetailedCardWidget(this.imageURL,
      {this.heading = 'Dummy Heading',
      this.description = 'Dummy Description',
      this.price = 50});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
            child: GalleryWidget(
              imageURL: this.imageURL,
              h: 65,
              w: 65,
              opacity: 0.1,
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    heading,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    description,
                    style: TextStyle(fontSize: 10, color: Colors.blueGrey),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: 60,
            child: Center(
              child: Text('${price}AED',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
            ),
          )
        ],
      ),
    );
  }
}
