import 'package:flutter/material.dart';
import 'package:netflix/models/movie_models.dart';

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
          padding: EdgeInsets.only(left: 10),
          scrollDirection: Axis.horizontal,
          itemCount: movies.length,
          itemBuilder: (context, index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Container(
                        width: 200,
                        decoration: BoxDecoration(
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
                        height: 40,
                        width: 40,
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
            );
          }),
    );
  }
}
