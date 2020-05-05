import 'package:flutter/material.dart';

class HomeSlides extends StatelessWidget {
  Widget cardItem(String pathImage, String title) {
    return Container(
      margin: EdgeInsets.only(right: 20.0, left: 20.0),
      child: Center(
        child: Stack(
          children: <Widget>[
            Container(
              height: 180.0,
              width: 330.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(pathImage),
                ),
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
            Container(
              margin: EdgeInsets.only(
                left: 70.0,
                top: 120.0,
              ),
              width: 200,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
                color: Colors.white,
                shape: BoxShape.rectangle,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 15.0,
                    offset: Offset(0.0, 7.0),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 10.0, top: 10.0),
                    child: Text(
                      title,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Archivo',
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: Text(
                      'It is a long established fact that a reader will be distracted by the readable content of a page.',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Cormorant',
                          fontSize: 14.0),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 230.0,
                top: 210.0,
              ),
              decoration: BoxDecoration(
                color: Colors.deepPurple[800],
                shape: BoxShape.circle,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 15.0,
                    offset: Offset(2.0, 17.0),
                  ),
                ],
              ),
              child: Icon(Icons.data_usage, color: Colors.white, size: 40.0),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        cardItem('assets/img/arch1.jpg', 'Architecture'),
        cardItem('assets/img/arch2.jpg', 'Design'),
        cardItem('assets/img/arch3.gif', 'Aesthetics'),
      ],
    );
  }
}
