import 'package:flutter/material.dart';
import 'package:movie_app/model/recipe.dart';
import 'package:movie_app/screen/allPage.dart';
import 'package:movie_app/screen/detailpage.dart';

class poster extends StatelessWidget {
  const poster({
    Key? key,
    required this.title,
    required this.resep,
  }) : super(key: key);

  final String title;
  final List<Resep> resep;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              //Popular
              title,
              style: TextStyle(
                color: Colors.orange,
                fontFamily: 'Poppins',
                fontSize: 20,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AllPage(resep: resep,)
                  ),
                );
              },
              child: Text(
                'lihat semua',
                style: TextStyle(
                  color: Color(0xFF08091B),
                  fontFamily: 'Poppins',
                  fontSize: 10,
                ),
              ),
            )
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 8),
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: resep.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailPage(
                              resep: resep[index],
                            )),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 180,
                      width: 140,
                      margin: EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            resep[index].imgPoster,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 140,
                      child: Text(
                        resep[index].title,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF08091B),
                          fontSize: 12,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
