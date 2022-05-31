import 'package:flutter/material.dart';
import 'package:movie_app/model/recipe.dart';
import 'package:movie_app/screen/homepage.dart';
import 'detailpage2.dart';

class AllPage extends StatefulWidget {
  const AllPage({Key? key, required this.resep}) : super(key: key);

  final List<Resep> resep;

  @override
  State<AllPage> createState() => _AllPageState();
}

class _AllPageState extends State<AllPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Row(
            children: [
              BackButton(
                color: Color(0xFF08091B),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
              ),
              Text(
                'Semua',
                style: TextStyle(
                  color: Colors.orange,
                  fontFamily: 'Poppins',
                ),
              )
            ],
          ),
          elevation: 0,
        ),
        body: Container(
          margin: EdgeInsets.only(top: 8),
          height: MediaQuery.of(context).size.height,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.8,
            ),
            itemCount: widget.resep.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailPage2(
                        resep: widget.resep[index],
                      ),
                    ),
                  );
                },
                child: Center(
                  child: Stack(
                    children: [
                      Container(
                        height: 180,
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              widget.resep[index].imgPoster,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        width: 140,
                        bottom: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Colors.black,
                                  Colors.transparent,
                                ],
                                begin: FractionalOffset.bottomCenter,
                                end: FractionalOffset.topCenter),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 5, right: 5, bottom: 5),
                            child: Text(
                              widget.resep[index].title,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                overflow: TextOverflow.fade,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
