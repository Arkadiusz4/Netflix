import 'package:flutter/cupertino.dart';

class Movie {
  String imgUrl;
  String title;
  String categories;
  int year;
  String country;
  int length;
  String description;
  List<String> screenshots;

  Movie({
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

final List<Movie> movies = [
  Movie(
      imgUrl:
          'https://static.posters.cz/image/1300/plakaty/james-bond-no-time-to-die-profile-i114389.jpg',
      title: 'No time to die',
      categories: 'Adventure',
      year: 2021,
      country: 'USA/England',
      length: 183,
      description:
          'James Bond has left active service. His peace is short-lived when Felix Leiter, an old friend from the CIA, turns up asking for help, leading Bond onto the trail of a mysterious villain armed with dangerous new technology.',
      screenshots: [
        'https://i.pinimg.com/originals/fd/5e/1d/fd5e1d8878c402aaba2fb6373e880b1f.webp',
        'https://cdn.mos.cms.futurecdn.net/dNmCDjJT5G76aDKiYphTkF.jpg',
        'https://i.imgur.com/Zm9X4lT.jpg',
        'https://images.complex.com/complex/images/c_fill,f_auto,g_center,w_1200/fl_lossy,pg_1/knie3z7uwe3inyua5kft/no-time-to-die-04'
      ]),
  Movie(
      imgUrl:
          'https://i.pinimg.com/originals/4b/5d/90/4b5d903464d54b247674d2f75c126cb4.jpg',
      title: 'Moana',
      categories: 'Family, Kids',
      year: 2016,
      country: 'USA',
      length: 103,
      description:
          'On the Polynesian island of Motunui, the inhabitants worship the goddess Te Fiti, who brought life to the ocean, using a stone as her heart and the source of her power. Maui, the shape-shifting demigod and master of sailing, steals the heart to give humanity the power of creation. However, Te Fiti disintegrates, and Maui is attacked by Te Ka, a volcanic demon, losing both his magical giant fishhook and the heart to the depths. A millennium later, Moana, daughter of Motunui\'s chief Tui, is chosen by the ocean to return the heart to Te Fiti. However, Tui arrives and takes Moana away, causing her to lose the heart. Tui and Moana\'s mother, Sina, try to keep her away from the ocean to prepare her for ascension as the island\'s chief.',
      screenshots: [
        'https://i0.wp.com/www.nerdsandbeyond.com/wp-content/uploads/2016/10/Screen-Shot-2016-10-17-at-2.14.24-PM.png?fit=1576%2C622&ssl=1',
        'http://www.fortsandfairies.com/wp-content/uploads/2016/11/Moana-8.jpg',
        'https://ilarge.lisimg.com/image/14155381/1118full-moana-screenshot.jpg',
      ]),
  Movie(
      imgUrl:
          'https://m.media-amazon.com/images/M/MV5BMGM2NzY4NDUtNmE3ZS00ZTBmLWE4NDYtNTJhNDNhMjQyNDI5XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg',
      title: 'Jumanji: The next level',
      categories: 'Family, Adventure',
      year: 2019,
      country: 'USA',
      length: 123,
      description:
          'In Jumanji: The Next Level, the gang is back but the game has changed. As they return to rescue one of their own, the players will have to brave parts unknown from arid deserts to snowy mountains, to escape the world\'s most dangerous game.',
      screenshots: [
        'https://www.cnet.com/a/img/v5yc6fUQKoDV5-e2qOSQ1XCO4hs=/940x0/2019/07/01/a16908e4-9cd3-40b0-9ac8-6132a0f7dfc0/therockjumanji.jpg',
        'https://aliefworkshop.files.wordpress.com/2019/12/jumanji10.jpg?w=640',
        'https://themoviemylife.files.wordpress.com/2019/10/screenshot-2019-10-31-at-13.33.09.png',
      ]),
];
