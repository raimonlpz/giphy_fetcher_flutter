import 'package:flutter/material.dart';

class GifCard extends StatelessWidget {
  final String image;
  GifCard(this.image);

  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(20.0),
        child: Image.network(image),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black38,
              blurRadius: 15.0,
              offset: Offset(0.0, 7.0),
            ),
          ],
        ),
      ),
    );
  }
}
