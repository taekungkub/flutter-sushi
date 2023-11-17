import 'package:flutter/material.dart';
import 'package:flutter_application_empty/model/cart.dart';

class CartController with ChangeNotifier {
  late List<CartItem> _cartItems = [];

  List<CartItem>? get cartItems => _cartItems;

  void onAddToCart(CartItem item) {
    final existingItemIndex =
        _cartItems.indexWhere((element) => element.id == item.id);

    if (existingItemIndex != -1) {
      _cartItems[existingItemIndex].quantity += item.quantity;
    } else {
      _cartItems.add(item);
    }

    notifyListeners();
  }

  void removeItem(int itemId) {
    _cartItems.removeWhere((item) => item.id == itemId);
    notifyListeners();
  }

  void updateQuantity(String itemId, int newQuantity) {
    final itemIndex =
        _cartItems.indexWhere((item) => item.id == itemId);

    if (itemIndex != -1) {
      if (newQuantity <= 1) {
        newQuantity = 1;
      }
      _cartItems[itemIndex].quantity = newQuantity;
    }
    notifyListeners();
  }

  void removeFromCart(String itemId) {
    _cartItems.removeWhere((item) => item.id == itemId);
    notifyListeners();
  }

  // Calculate the total cost of items in the cart
  double calculateTotal() {
    return _cartItems.fold(
        0, (total, item) => total + (item.price * item.quantity));
  }

  void clear() {
    _cartItems.clear();
    notifyListeners();
  }
}
