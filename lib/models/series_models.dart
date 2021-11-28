class Series {
  String imgUrl;
  String title;
  String categories;
  String year;
  String country;
  int length;
  String description;
  List<String> screenshots;

  Series({
    required this.imgUrl,
    required this.title,
    required this.categories,
    required this.year,
    required this.country,
    required this.length,
    required this.description,
    required this.screenshots,
  });
}

List<Series> series = [
  Series(
      imgUrl:
          'https://cdn.shopify.com/s/files/1/0969/9128/products/PeakyBlinders-NetflixTVShow-ArtPoster_125897c4-6348-41e8-b195-d203700ebcca.jpg?v=1619864555',
      title: 'Peaky Blinders',
      categories: 'Historical, Drama',
      year: '2013-2021',
      country: 'Great Britain',
      length: 5,
      description:
          'Birmingham, UK, 1919. In the aftermath of WW1, the Shelby family are making a name for themselves as bookmakers, racketeers and gangsters. Nominally the head of the family is the oldest brother, Arthur, but the real brains, ambition and drive in the organisation lies with Tommy, the second oldest. He will carve out an empire for himself that will stretch beyond Birmingham. This with the aid of his family and his gang, the Peaky Blinders.',
      screenshots: [
        'https://cdn.statically.io/img/movieverse.top/f=auto/wp-content/uploads/2021/11/16WrDc3.jpg',
        'https://external-preview.redd.it/TWVJRViUwAj9mY1jf5a1DeCm8noI8jIo0n9Mu2TXqoY.jpg?auto=webp&s=832afcb13fb41737dcfe52053f428b49aab94695',
        'https://images.squarespace-cdn.com/content/51b3dc8ee4b051b96ceb10de/1568915676629-K8BVHIFJMQ0SLESWHP8A/great-new-trailer-for-peaky-blinders-season-5-its-war-you-want-its-war-you-shall-have-social.jpg?format=1500w&content-type=image%2Fjpeg',
        'https://kulturalnemedia.pl/wp-content/uploads/2020/04/maxresdefault-30.jpg',
      ]),
  Series(
      imgUrl:
          'https://m.media-amazon.com/images/M/MV5BNWYwMzE2MGItOTYwYy00YmQyLWE0NGQtZWViMTU4ZTk4ZjQxXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg',
      title: 'Space Force',
      categories: 'Comedy',
      year: '2020',
      country: 'USA',
      length: 1,
      description:
          'A four-star general begrudgingly teams up with an eccentric scientist to get the U.S. military\'s newest agency, Space Force, ready for lift-off. Greg Daniels and Steve Carell of "The Office" reunite for another irreverent workplace comedy.',
      screenshots: [
        'https://www.cnet.com/a/img/PJgIkngJGXALgklML2XjGxsP_Ns=/940x0/2020/05/13/841a4b67-9bcd-40f6-a2f8-965ccd98908b/space-force-netflix-hex-102-unit-02708r-promo.jpg',
        'https://www.hollywoodreporter.com/wp-content/uploads/2020/04/hex_101_unit_00147r-h_2020.jpg',
        'https://www.gry-online.pl/Galeria/Html/Artykuly/6508796.jpg',
        'https://statcdn.fandango.com/MPX/image/NBCU_Fandango/370/591/thumb_9DD4AF27-DB5D-42F2-82DB-0FF94EEDAFC9.jpg',
      ]),
  Series(
      imgUrl:
          'https://www.themoviedb.org/t/p/original/4MObjJi6LOWO6xtDzAkX6NVBU0J.jpg',
      title: 'Lupin',
      categories: 'Thriller, Mystery',
      year: '2021',
      country: 'France',
      length: 2,
      description:
          'Inspired by the adventures of Arsène Lupin, gentleman thief Assane Diop sets out to avenge his father for an injustice inflicted by a wealthy family.',
      screenshots: [
        'https://gfx.radiozet.pl/var/radiozetsg/storage/images/seriale/lupin-sezon-2-kiedy-nowe-odcinki-serialu-i-czy-bedzie-drugi-sezon-data/14940727-1-pol-PL/Lupin-sezon-2-kiedy-nowe-odcinki-serialu-i-czy-bedzie-drugi-sezon-DATA_article.jpg',
        'https://www.serialowa.pl/wpr/wp-content/uploads/2021/01/lupin-czolo.jpg',
        'https://www.nme.com/wp-content/uploads/2021/05/lupin-1-netflix.jpg',
        'https://cdn.statically.io/img/movieverse.top/f=auto/wp-content/uploads/2021/11/RFbMvLv.png'
      ]),
  Series(
      imgUrl: 'https://blog051.files.wordpress.com/2018/03/riverdale.jpg',
      title: 'Riverdale',
      categories: 'Drama, Mystery',
      year: '2017-2021',
      country: 'USA',
      length: 6,
      description:
          'In an innocent, small town, the death of a popular rich boy named Jason Blossom rattles the town. Archie Andrews discovers his love for music, and his teacher. Betty Cooper unravels her feelings for Archie, and her family secrets. Veronica Lodge is the new girl, who is a threat to cheerleading captain Cheryl Blossom, Jason\'s twin sister. Archie, Betty, Veronica, and Jughead band together to find the mysteries behind Jason Blossom\'s murder.',
      screenshots: [
        'https://i.pinimg.com/originals/a3/78/40/a37840ade4bf705b55e85829d4dd4a1b.jpg',
        'https://pbs.twimg.com/media/C8N5B8LV0AAbRXK.jpg',
        'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F6%2F2017%2F04%2Friverdale-41317-2000.jpg&q=85',
        'https://tv-fanatic-res.cloudinary.com/iu/s--0UbyT7vb--/t_xlarge_l/cs_srgb,f_auto,fl_strip_profile.lossy,q_auto:420/v1520394428/weekend-getaway-riverdale-s2e14.jpg'
      ])
];
