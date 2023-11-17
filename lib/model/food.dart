class Food {
  String id;
  String name;
  double price;
  String imagePath;
  String rating;

  Food(
      {required this.id,
      required this.name,
      required this.price,
      required this.imagePath,
      required this.rating});
}

List<Food> menus = [
  Food(
    id: '1',
    name: 'Otoro Sushi',
    price: 200,
    imagePath: 'assets/images/sushi.png',
    rating: '3.5',
  ),
  Food(
    id: '2',
    name: 'Ebi Sushi',
    price: 300,
    imagePath: 'assets/images/sushi_2.png',
    rating: '4',
  ),
  Food(
    id: '3',
    name: 'Salmon Sushi',
    price: 400,
    imagePath: 'assets/images/sushi_3.png',
    rating: '5',
  ),
  Food(
    id: '4',
    name: 'Onikiri',
    price: 50,
    imagePath: 'assets/images/sushi_5.png',
    rating: '5',
  ),
  Food(
    id: '5',
    name: 'Salmon Sushi',
    price: 400,
    imagePath: 'assets/images/sushi_6.png',
    rating: '5',
  ),
  Food(
    id: '6',
    name: 'Salmon Sushi',
    price: 400,
    imagePath: 'assets/images/sushi_7.png',
    rating: '5',
  ),
];
