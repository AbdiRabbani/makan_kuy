import 'package:flutter/material.dart';
import 'package:movie_app/model/carousel.dart';
import 'package:movie_app/model/recipe.dart';
import 'package:movie_app/model/poster.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

///

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'MakanYuk',
            style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.orange,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(right: 15.0, left: 15.0, bottom: 50),
            child: Wrap(
              children: [
                Container(
                  height: 50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Halo Abdi",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        "Cari makan yang banyak!!",
                        style: TextStyle(
                            color: Color(0xFF08091B),
                            fontSize: 14,
                            fontFamily: 'Poppins'),
                      ),
                    ],
                  ),
                ),
                CarouselWidget(beingPopular),
                poster(title: 'Menu Baru', resep: newFood),
                poster(title: 'Terlaris', resep: mostSelling)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
