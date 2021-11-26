import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:netflix/models/movie_models.dart';
import 'package:netflix/screens/movie_screen.dart';
import 'package:netflix/widgets/films_list_view/film_list_view.dart';
import 'package:netflix/widgets/films_list_view/netflix_orignals_list_view.dart';
import 'package:netflix/widgets/head_menu/head_menu.dart';
import 'package:netflix/widgets/navbar/navbar.dart';
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Navbar(),
          Container(
            width: MediaQuery.of(context).size.width - 60,
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                HeadMenu(),
                SizedBox(
                  height: 20,
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
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: NetworkImage(e.imgUrl),
                                    fit: BoxFit.fitHeight),
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
                TextMenu(text: 'Popular Now'),
                SizedBox(
                  height: 10,
                ),
                FilmListView(),
                SizedBox(
                  height: 20,
                ),
                TextMenu(text: 'Netflix Originals'.toUpperCase()),
                SizedBox(
                  height: 10,
                ),
                NetflixOriginalsListView(),
                SizedBox(
                  height: 20,
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
        ],
      ),
    );
  }
}
