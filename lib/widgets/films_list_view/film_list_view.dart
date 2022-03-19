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
                        screenshots: movies[index].screenshots,),
                  ),
                ),
                child: Container(
                  width: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      movies[index].imgUrl,
                      fit: BoxFit.cover,
                      loadingBuilder: (BuildContext context, Widget child,
                          ImageChunkEvent? loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: SizedBox(
                            height: 50,
                            width: 50,
                            child: CircularProgressIndicator(
                              strokeWidth: 4,
                              color: Colors.red,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
