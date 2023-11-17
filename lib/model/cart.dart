class CartItem {
  final String id;
  final String name;
  final double price;
  int quantity;
  String image;

  CartItem({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
    this.quantity = 1,
  });
}
