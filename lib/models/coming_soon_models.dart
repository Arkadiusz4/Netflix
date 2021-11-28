class ComingSoon {
  String imgUrl;
  String title;
  String categories;
  String date;
  String description;
  bool duration;

  ComingSoon({
    required this.imgUrl,
    required this.title,
    required this.categories,
    required this.date,
    required this.description,
    required this.duration,
  });
}

final List<ComingSoon> comingSoon = [
  ComingSoon(
    imgUrl:
        'https://ocdn.eu/images/pulscms/MWI7MDA_/db48bfa18587db39131108d1c3531360.jpg',
    title: 'The Witcher: Season 2',
    categories: 'Adventure - Fantasy',
    date: '17 December 2021',
    description:
        'Convinced Yennefer\'s life was lost at the Battle of Sodden, Geralt of Rivia brings Princess Cirilla to the safest place he knows, his childhood home of Kaer Morhen. While the Continent\'s kings, elves, humans and demons strive for supremacy outside its walls, he must protect the girl from something far more dangerous: the mysterious power she possesses inside.',
    duration: true,
  ),
  ComingSoon(
    imgUrl:
        'https://i.pinimg.com/originals/6e/6e/14/6e6e146f0dc4fdc50638950ea441b099.jpg',
    title: 'Extraction 2',
    categories: 'Action - Thriller',
    date: 'Coming soon (2022)',
    description:
        'After barely surviving his grievous wounds from his mission in Dhaka, Bangladesh, Tyler Rake is back, and his team is ready to take on their next mission. Tasked with extracting a family who is at the mercy of a Georgian gangster, Tyler infiltrates one of the world\'s deadliest prisons in order to save them. But when the extraction gets hot, and the gangster dies in the heat of battle, his equally ruthless brother tracks down Rake and his team to Sydney, in order to get revenge.',
    duration: false,
  ),
  ComingSoon(
    imgUrl:
        'https://www.thenexthint.com/wp-content/uploads/2021/11/Money-Heist-Season-5-Volume-2-Release-and-Many-More.jpeg',
    title: 'La casa de papel: Season 5',
    categories: 'Thriller - Action',
    date: '3 December 2021',
    description:
        'Tokyo is dead. The enemy still lurks in the Bank of Spain, wounded but as dangerous as ever. Facing their darkest hour and greatest challenge yet, the gang hatch a bold plan to get the gold out without anyone noticing. To make matters worse, the Professor makes the biggest mistake of his life.',
    duration: false,
  ),
  ComingSoon(
      imgUrl:
          'https://www.pcworld.pl/g1/news/thumbnails/3/3/334933_stranger_things_4_kiedy_premiera_david_harbour_jpg_80_resize_770x1000.webp',
      title: 'Stranger Things: Season 4',
      categories: 'Science Fiction - Horror',
      date: 'Coming soon (2022)',
      description:
          'Hopper is imprisoned far from home in the snowy wasteland of Kamchatka, Russia, where he will face dangers both human… and other. Meanwhile, back in the States, a new horror is beginning to surface, something long buried, something that connects everything...',
      duration: true)
];
