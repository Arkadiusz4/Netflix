import 'package:flutter/material.dart';
import 'package:netflix/models/movie_models.dart';
import 'package:netflix/screens/detail_screen/film_screen.dart';

class FilmListView extends StatefulWidget {
  @override
  _FilmListViewState createState() => _FilmListViewState();
}

class _FilmListViewState extends State<FilmListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: MediaQuery.of(context).size.width - 60,
      padding: EdgeInsets.only(right: 10),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movies.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 10),
              child: GestureDetector(
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
                child: Container(
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(movies[index].imgUrl),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
