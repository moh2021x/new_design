import 'dart:ui';

class Food {
  final int id;
  final String title;
  final double rating;
  final String note;
  final String image;
  final Color color;

  Food(
      {this.id,
        this.title,
        this.rating,
        this.note,
        this.image,
        this.color});

  String get asset => 'assets/images/$image.png';
  bool get isDark => color.computeLuminance() < 0.6;
}

final List<Food> foods = [
  Food(
      id: 1,
      title: 'Home HealthCare',
      rating: 3.2,
      note: '',
      image: 'h1',
      color: Color(0xff872573),),
  Food(
      id: 2,
      title: 'Laboratory',
      rating: 3.8,
      note: ' ',
      image: 'h2',
      color: Color(0xffdeafd6),),
  Food(
      id: 3,
      title: 'Home Personal Care',
      rating: 3.8,
      note: '',
      image: 'h3',
      color: Color(0xff3e5fd4),),
  Food(
      id: 4,
      title: 'Diet and fitness',
      rating: 3.8,
      note: '',
      image: 'h4',
      color: Color(0xffde4b4b),),
  Food(
      id: 5,
      title: 'Beauty and Health',
      rating: 3.8,
      note: '',
      image: 'h5',
      color: Color(0xff96D0A6),),
  // Food(
  //     id: 6,
  //     title: 'Pizza',
  //     rating: 3.8,
  //     note: 'Fresh Dough. Unbleached enriched wheat flour, water, sugar, soybean oil, salt, yeast. ...Cheese. Part-skim mozzarella cheese (pasteurized milk, cultures, salt, enzymes), modified food starch, sugarcane fiber, whey protein concentrate, sodium citrate. ...Pizza Sauce. ...',
  //     image: 'pizza',
  //     color: Color.fromRGBO(130, 61, 99, 1.0)),
  // Food(
  //     id: 7,
  //     title: 'Puffs',
  //     rating: 3.8,
  //     note: 'a popular snack, very similar to pie is prepared from puff pastry sheets. in other words, the puffs are prepared from special sheets known as puff pastry sheets which is a layered sheet and sandwiched with butter or dalda.',
  //     image: 'puffs',
  //     color: Color.fromRGBO(88, 90, 59, 1.0)),
  // Food(
  //     id: 8,
  //     title: 'Sandwich',
  //     rating: 3.8,
  //     note: 'Spread Out. Sandwich spreads add flavor but also perform the essential task of lending moisture and sometimes creaminess to sandwiches. ...Use the Right Bread. Choose bread appropriate to the sandwich you are making. ...Choose To-Go Toppings. ...Take the Edge Off Onions.',
  //     image: 'sandwich',
  //     color: Color.fromRGBO(121, 118, 114, 1.0)),
  // Food(
  //     id: 9,
  //     title: 'Sub',
  //     rating: 3.8,
  //     note: 'Sauteed bell peppers, sauteed mushrooms, sauteed and raw onions, lettuce, tomato, mayo, deli mustard, Italian dressing, provolone, cheddar, and Monterey Jack.',
  //     image: 'sub',
  //     color: Color.fromRGBO(136, 91, 61, 1.0)),
  // Food(
  //     id: 10,
  //     title: 'Tacos',
  //     rating: 3.8,
  //     note: 'If you want to keep it classic, the best taco toppings are cheese, pico de gallo, lettuce, tomatoes, and sour cream. But you can also add in onions, jalepenos, green chiles, beans, and more!',
  //     image: 'takos',
  //     color: Color.fromRGBO(167, 163, 156, 1.0)),
];