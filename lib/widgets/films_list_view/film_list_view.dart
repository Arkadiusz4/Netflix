import 'package:flutter/material.dart';
import 'package:netflix/models/movie_models.dart';

class FilmListView extends StatefulWidget {
  @override
  _FilmListViewState createState() => _FilmListViewState();
}

class _FilmListViewState extends State<FilmListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width - 60,
      child: ListView.builder(
          padding: EdgeInsets.only(left: 10),
          scrollDirection: Axis.horizontal,
          itemCount: movies.length,
          itemBuilder: (context, index) {
            return Container(
              width: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(movies[index].imgUrl),
                    fit: BoxFit.contain),
              ),
            );
          }),
    );
  }
}
