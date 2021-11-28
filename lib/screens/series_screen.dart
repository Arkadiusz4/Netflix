import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:netflix/models/series_models.dart';
import 'package:netflix/screens/detail_screen/series_screen_detail.dart';
import 'package:netflix/widgets/films_list_view/film_list_view.dart';
import 'package:netflix/widgets/films_list_view/netflix_orignals_list_view.dart';
import 'package:netflix/widgets/head_menu/head_menu_series.dart';
import 'package:netflix/widgets/navbar/navbar1.dart';
import 'package:netflix/widgets/series_list_view/series_list_view.dart';
import 'package:netflix/widgets/series_list_view/series_no_list_view.dart';
import 'package:netflix/widgets/text_menu.dart';

class SeriesScreen extends StatefulWidget {
  @override
  _SeriesScreenState createState() => _SeriesScreenState();
}

class _SeriesScreenState extends State<SeriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Navbar1(),
          Container(
            width: MediaQuery.of(context).size.width - 60,
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                HeadMenuSeries(),
                SizedBox(
                  height: 20,
                ),
                CarouselSlider(
                  items: series
                      .map((e) => GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => SeriesScreenDetail(
                                    photo: e.imgUrl,
                                    title: e.title,
                                    categories: e.categories,
                                    year: e.year,
                                    country: e.country,
                                    description: e.description,
                                    length: e.length,
                                    screenshots: e.screenshots),
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
                      TextMenu(text: 'Popular Now'),
                      SizedBox(
                        height: 10,
                      ),
                      SeriesListView(),
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
                      SeriesNetflixOriginalsListView(),
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
                      SeriesListView(),
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
                      SeriesListView(),
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
