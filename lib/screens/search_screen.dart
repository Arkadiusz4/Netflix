import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/models/search_models.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController? _textEditingController = TextEditingController();
  List<Search> filmsOnSearch = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(Icons.arrow_back_ios)),
        title: Container(
          height: 40,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.25),
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextField(
            textAlign: TextAlign.start,
            textAlignVertical: TextAlignVertical.center,
            showCursor: true,
            maxLines: 1,
            cursorColor: Colors.red,
            cursorWidth: 2,
            controller: _textEditingController,
            onChanged: (value) {
              setState(() {
                filmsOnSearch = search
                    .where((element) => element.title
                        .toLowerCase()
                        .contains(value.toLowerCase()))
                    .toList();
              });
            },
            style: TextStyle(color: Colors.white, fontSize: 18),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Search',
              hintStyle:
                  TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 18),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white.withOpacity(0.8),
              ),
              suffixIcon: _textEditingController!.text.length > 0
                  ? IconButton(
                      icon: Icon(
                        Icons.clear,
                        color: Colors.white.withOpacity(0.8),
                      ),
                      onPressed: () {
                        filmsOnSearch.clear();
                        _textEditingController!.clear();
                        setState(() {
                          _textEditingController!.text = '';
                        });
                      },
                    )
                  : Container(),
            ),
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          physics: ScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 5, right: 5),
            child: _textEditingController!.text.isNotEmpty &&
                    filmsOnSearch.isEmpty
                ? Text('Ups')
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          'Top Searches',
                          style: GoogleFonts.oxygen(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 10),
                      Column(
                        children: [
                          ListView.builder(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: _textEditingController!.text.isNotEmpty
                                  ? filmsOnSearch.length
                                  : 5,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    color: Colors.black87,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: (MediaQuery.of(context)
                                                        .size
                                                        .width -
                                                    30) *
                                                0.8,
                                            height: 180,
                                            child: Row(
                                              children: [
                                                Stack(
                                                  children: [
                                                    Container(
                                                      width: 120,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        image: DecorationImage(
                                                          fit: BoxFit.cover,
                                                          image: NetworkImage(
                                                            _textEditingController!
                                                                    .text
                                                                    .isNotEmpty
                                                                ? filmsOnSearch[
                                                                        index]
                                                                    .imgUrl
                                                                    .toString()
                                                                : search[index]
                                                                    .imgUrl,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 8),
                                                Container(
                                                  child: Text(
                                                    _textEditingController!
                                                            .text.isNotEmpty
                                                        ? filmsOnSearch[index]
                                                            .title
                                                            .toString()
                                                            .toUpperCase()
                                                        : search[index]
                                                            .title
                                                            .toUpperCase(),
                                                    style: GoogleFonts.openSans(
                                                        fontSize: 18,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 100,
                                            child: Center(
                                              child: Container(
                                                width: 45,
                                                height: 45,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                    width: 2,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Icon(
                                                    Icons.play_arrow,
                                                    color: Colors.white,
                                                    size: 30,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              })
                        ],
                      )
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
