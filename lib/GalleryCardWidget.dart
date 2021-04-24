import 'package:flutter/material.dart';

class GalleryCardWidget extends StatelessWidget {
  String imageURL;
  String name;
  int price;

  GalleryCardWidget({this.imageURL, this.name = 'Dress', this.price = 250});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(10, 0, 0, 5),
        child: Column(
          children: [
            Container(
                height: 90,
                width: 110,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.blueGrey.withOpacity(0.3),
                            BlendMode.multiply),
                        image: AssetImage(imageURL),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(3)),
                child: Container(
                  //color: Colors.amberAccent,
                  padding: EdgeInsets.all(2),
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.black45,
                  ),
                )),
            Text(
              name,
              style: TextStyle(fontSize: 10),
            ),
            Text(
              '${price}AED',
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            ),
          ],
        ));
  }
}
