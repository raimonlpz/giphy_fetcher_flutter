import 'package:artisanvol1/gif_card.dart';
import 'package:flutter/material.dart';

class GifPage extends StatelessWidget {
  final List<String> apiResponse;
  GifPage({Key key, this.apiResponse});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.black, Colors.deepPurpleAccent],
              ),
            ),
            margin: EdgeInsets.only(bottom: 55.0),
            child: ListView.builder(
              itemCount: apiResponse.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  child: GifCard(apiResponse[index]),
                );
              },
            ),
          ),
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height - 45),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Go Back',
                  style: TextStyle(fontFamily: "Comorant", color: Colors.black),
                ),
                Ink(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(
                      Icons.blur_on,
                      size: 30.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
