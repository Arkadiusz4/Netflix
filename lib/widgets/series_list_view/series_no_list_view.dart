import 'package:flutter/material.dart';
import 'package:netflix/models/series_models.dart';
import 'package:netflix/screens/detail_screen/series_screen_detail.dart';

class SeriesNetflixOriginalsListView extends StatefulWidget {
  @override
  _SeriesNetflixOriginalsListViewState createState() =>
      _SeriesNetflixOriginalsListViewState();
}

class _SeriesNetflixOriginalsListViewState
    extends State<SeriesNetflixOriginalsListView> {
  String logo =
      'https://historia.org.pl/wp-content/uploads/2018/04/netflix-logo.jpg';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      padding: EdgeInsets.only(right: 10),
      width: MediaQuery.of(context).size.width - 60,
      child: ListView.builder(
          padding: EdgeInsets.only(left: 10),
          scrollDirection: Axis.horizontal,
          itemCount: series.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => SeriesScreenDetail(
                    photo: series[index].imgUrl,
                    title: series[index].title,
                    categories: series[index].categories,
                    year: series[index].year,
                    country: series[index].country,
                    description: series[index].description,
                    length: series[index].length,
                    screenshots: series[index].screenshots,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Container(
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage(series[index].imgUrl),
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
