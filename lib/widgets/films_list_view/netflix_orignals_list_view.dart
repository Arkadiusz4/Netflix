import 'package:flutter/material.dart';
import 'package:netflix/models/movie_models.dart';
import 'package:netflix/screens/detail_screen/film_screen.dart';

class NetflixOriginalsListView extends StatefulWidget {
  @override
  _NetflixOriginalsListViewState createState() =>
      _NetflixOriginalsListViewState();
}

class _NetflixOriginalsListViewState extends State<NetflixOriginalsListView> {
  String logo =
      'https://historia.org.pl/wp-content/uploads/2018/04/netflix-logo.jpg';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: MediaQuery.of(context).size.width - 60,
      child: ListView.builder(
          padding: EdgeInsets.only(right: 10),
          scrollDirection: Axis.horizontal,
          itemCount: movies.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => MovieScreen(
                      photo: movies[index].imgUrl,
                      title: movies[index].title,
                      categories: movies[index].categories,
                      year: movies[index].year,
                      country: movies[index].country,
                      description: movies[index].description,
                      length: movies[index].length,
                      screenshots: movies[index].screenshots),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage(movies[index].imgUrl),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        top: 5,
                        child: Container(
                          height: 45,
                          width: 55,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(logo),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
