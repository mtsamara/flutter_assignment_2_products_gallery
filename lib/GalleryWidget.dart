import 'package:flutter/material.dart';

class GalleryWidget extends StatelessWidget {
  String imageURL;
  String imageDesc;
  double opacity;
  double h;
  double w;

  GalleryWidget(
      {this.imageURL,
      this.imageDesc = '',
      this.opacity = 0.5,
      this.h = 70.0,
      this.w = 100.0});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
        height: h,
        width: w,
        //color: Colors.blueAccent,
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(opacity), BlendMode.multiply),
                image: AssetImage(this.imageURL),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            this.imageDesc,
            style: TextStyle(
                color: Colors.white, fontSize: 10, fontWeight: FontWeight.w500),
          ),
        ));
  }
}
