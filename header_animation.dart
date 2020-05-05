import 'package:flutter/material.dart';

class HeaderAnimation extends StatelessWidget {
  final double width;
  final double height;

  HeaderAnimation({
    Key key,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.fastOutSlowIn,
      child: Image.asset(
        'assets/img/think.PNG',
      ),
      width: width,
      height: height,
    );
  }
}
