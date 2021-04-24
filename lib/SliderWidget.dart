import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  String heading;
  String description;
  String imageURL;

  SliderWidget({this.heading, this.description, this.imageURL});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
        padding: EdgeInsets.all(10),
        height: 125,
        width: 300,
        //color: Colors.blueAccent,
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), BlendMode.multiply),
                image: AssetImage(this.imageURL),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              this.heading.toUpperCase(),
              //textAlign: TextAlign.left,
              style: TextStyle(
                  //backgroundColor: Colors.amber,
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              this.description,
              style: TextStyle(
                  //backgroundColor: Colors.blueGrey,
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w300),
            )
          ],
        ));
  }
}
