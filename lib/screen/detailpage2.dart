import 'package:flutter/material.dart';
import 'package:movie_app/model/recipe.dart';
import 'package:movie_app/screen/allPage.dart';
import 'package:movie_app/screen/homepage.dart';

class DetailPage2 extends StatefulWidget {
  const DetailPage2({Key? key, required this.resep}) : super(key: key);

  final Resep resep;
  @override
  State<DetailPage2> createState() => _DetailPage2State();
}

class _DetailPage2State extends State<DetailPage2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: BackButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
            )),
        extendBodyBehindAppBar: true,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(right: 0, left: 0, top: 24, bottom: 60),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      child: AspectRatio(
                        aspectRatio: 487 / 497,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.center,
                              end: Alignment.topCenter,
                              stops: [0.1, 0.9],
                              colors: [
                                Colors.black.withOpacity(0.8),
                                Colors.white.withOpacity(0.1),
                              ],
                            ),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              alignment: FractionalOffset.topCenter,
                              image: NetworkImage(widget.resep.imgPoster),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 10,
                      width: 200,
                      child: Text(
                        widget.resep.title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Poppins',
                        ),
                        maxLines: 2,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 10,
                      child: Row(
                        children: [
                          Text(
                            widget.resep.rating,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 11.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          widget.resep.minute,
                          style: TextStyle(
                              color: Colors.orange, fontFamily: 'Poppins'),
                        ),
                        Text(
                          '|',
                          style: TextStyle(
                              color: Colors.orange, fontFamily: 'Poppins'),
                        ),
                        Text(
                          widget.resep.portion,
                          style: TextStyle(
                              color: Colors.orange, fontFamily: 'Poppins'),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Overview :',
                          style: TextStyle(
                            color: Colors.orange,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Text(
                          widget.resep.overview,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF08091B),
                              fontSize: 12),
                          textAlign: TextAlign.justify,
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.orange,
                          ),
                          width: 113,
                          height: 30,
                          padding: EdgeInsets.only(left: 11, top: 6),
                          child: Text(
                            'Watch Tutorial',
                            style: TextStyle(color: Colors.white),
                          )),
                      Container(
                        child: Icon(
                          Icons.bookmark_add_outlined,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
