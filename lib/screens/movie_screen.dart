import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/widgets/movie_screen/content_scroll.dart';
import 'package:netflix/widgets/movie_screen/circular_clipper.dart';

import 'package:netflix/widgets/movie_screen/info_text.dart';

class MovieScreen extends StatefulWidget {
  final String photo, title, categories, country, description;
  final int year, length;
  final List<String> screenshots;
  const MovieScreen(
      {Key? key,
      required this.photo,
      required this.title,
      required this.categories,
      required this.year,
      required this.country,
      required this.description,
      required this.length,
      required this.screenshots})
      : super(key: key);
  @override
  _MovieScreenState createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                transform: Matrix4.translationValues(0, -50, 0),
                width: double.infinity,
                child: Hero(
                  tag: widget.photo,
                  child: ClipShadowPath(
                    clipper: CircularClipper(),
                    shadow: Shadow(blurRadius: 20),
                    child: Image(
                      height: 400,
                      image: NetworkImage(widget.photo),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    padding: EdgeInsets.only(left: 20),
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.arrow_back),
                    iconSize: 30,
                  ),
                  IconButton(
                    padding: EdgeInsets.only(right: 20),
                    onPressed: () {},
                    icon: Icon(Icons.favorite_outline),
                    iconSize: 30,
                    color: Colors.red,
                  ),
                ],
              ),
              Positioned.fill(
                bottom: 10,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: RawMaterialButton(
                    padding: EdgeInsets.all(10),
                    elevation: 12,
                    onPressed: () {},
                    shape: CircleBorder(),
                    fillColor: Colors.white,
                    child: Icon(
                      Icons.play_arrow,
                      size: 60,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 25,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    size: 40,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 25,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.share,
                    size: 40,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  widget.title.toUpperCase(),
                  style: GoogleFonts.openSans(
                      fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  widget.categories,
                  style:
                      GoogleFonts.oxygen(fontSize: 18, color: Colors.black54),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InfoText(text: widget.year.toString(), subtitle: 'Year'),
                    InfoText(text: widget.country, subtitle: 'Country'),
                    InfoText(
                        text: '${widget.length.toString()} min',
                        subtitle: 'Length')
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Text(
                    widget.description,
                    style:
                        GoogleFonts.oxygen(color: Colors.black54, fontSize: 17),
                  ),
                ),
              ],
            ),
          ),
          ContentScroll(
              images: widget.screenshots,
              title: 'Screenshots',
              imageHeight: 270,
              imageWidth: 350)
        ],
      ),
    );
  }
}
