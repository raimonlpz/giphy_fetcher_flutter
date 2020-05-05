import 'package:flutter/material.dart';
import 'home_slides.dart';
import 'header_animation.dart';
import 'gifs_page.dart';
import 'api/http_api.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  HttpClientNews http = HttpClientNews();

  double width = 300.0;
  double height = 250.0;

  void animateImage() {
    setState(() {
      width = 400.0;
      height = 305.0;

      new Future.delayed(Duration(milliseconds: 1000), () {
        width = 300.0;
        height = 250.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.black, Colors.deepPurpleAccent],
                ),
              ),
              child: Center(
                child: HeaderAnimation(width: width, height: height),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(
                  left: 55.0,
                  right: 55.0,
                ),
                padding: EdgeInsets.all(30.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.black, Colors.deepPurpleAccent],
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black38,
                      spreadRadius: 2.0,
                      blurRadius: 5.0,
                      offset: Offset(
                        5.0,
                        5.0,
                      ),
                    ),
                  ],
                ),
                child: Container(
                  child: Ink(
                    child: InkWell(
                      onTap: () async {
                        animateImage();
                        await new Future.delayed(Duration(milliseconds: 500));
                        http.getNews().then((response) {
                          Navigator.of(context).push(
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) {
                                return GifPage(apiResponse: response);
                              },
                            ),
                          );
                        });
                      },
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Tap to See Gifs',
                            style: TextStyle(
                              fontFamily: "Cormorant",
                              fontSize: 22.0,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Icon(
                            Icons.blur_on,
                            size: 30.0,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 2 + 50,
              ),
              child: HomeSlides(),
            ),
          ],
        ),
      ),
    );
  }
}
