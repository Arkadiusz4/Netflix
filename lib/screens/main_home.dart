import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:netflix/models/movie_models.dart';
import 'package:netflix/screens/detail_screen/film_screen.dart';
import 'package:netflix/widgets/films_list_view/film_list_view.dart';
import 'package:netflix/widgets/films_list_view/netflix_orignals_list_view.dart';
import 'package:netflix/widgets/head_menu/head_menu_films.dart';
import 'package:netflix/widgets/navbar/navbar1.dart';
import 'package:netflix/widgets/text_menu.dart';

class MainHome extends StatefulWidget {
  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Navbar1(),
          Container(
            width: MediaQuery.of(context).size.width - 60,
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                HeadMenuFilm(),
                SizedBox(
                  height: 10,
                ),
                CarouselSlider(
                  items: movies
                      .map((e) => GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => MovieScreen(
                                  photo: e.imgUrl,
                                  categories: e.categories,
                                  title: e.title,
                                  year: e.year,
                                  country: e.country,
                                  description: e.description,
                                  length: e.length,
                                  screenshots: e.screenshots,
                                ),
                              ),
                            ),
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  e.imgUrl,
                                  fit: BoxFit.cover,
                                  loadingBuilder: (BuildContext context,
                                      Widget child,
                                      ImageChunkEvent? loadingProgress) {
                                    if (loadingProgress == null) return child;
                                    return Center(
                                      child: SizedBox(
                                        height: 100,
                                        width: 100,
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
                          ))
                      .toList(),
                  options: CarouselOptions(
                    height: 450,
                    viewportFraction: 0.65,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  color: Colors.white.withOpacity(0.85),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      TextMenu(text: 'Popular Now'),
                      SizedBox(
                        height: 10,
                      ),
                      FilmListView(),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  color: Colors.white.withOpacity(0.85),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      TextMenu(text: 'Netflix Originals'.toUpperCase()),
                      SizedBox(
                        height: 10,
                      ),
                      NetflixOriginalsListView(),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  color: Colors.white.withOpacity(0.85),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      TextMenu(text: 'New on Netflix'),
                      SizedBox(
                        height: 10,
                      ),
                      FilmListView(),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  color: Colors.white.withOpacity(0.85),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      TextMenu(text: 'My List'),
                      SizedBox(
                        height: 10,
                      ),
                      FilmListView(),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
