import 'package:flutter/material.dart';
import 'package:netflix/models/series_models.dart';
import 'package:netflix/screens/detail_screen/series_screen_detail.dart';
import 'package:netflix/screens/series_screen.dart';

class SeriesListView extends StatefulWidget {
  @override
  _SeriesListViewState createState() => _SeriesListViewState();
}

class _SeriesListViewState extends State<SeriesListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: EdgeInsets.only(right: 10),
      width: MediaQuery.of(context).size.width - 60,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: series.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 10),
              child: GestureDetector(
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
                child: Container(
                  width: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      series[index].imgUrl,
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
