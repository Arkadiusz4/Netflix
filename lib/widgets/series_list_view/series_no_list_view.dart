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
                          height: 350,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              series[index].imgUrl,
                              fit: BoxFit.cover,
                              loadingBuilder: (BuildContext context,
                                  Widget child,
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
