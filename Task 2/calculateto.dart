double calculateTotalPrice(
    Map<String, double> cart, Map<String, double> prices) {
  double totalPrice = 0.0;

  cart.forEach((itemName, quantity) {
    if (prices.containsKey(itemName)) {
      double itemPrice = prices[itemName]!;
      double subtotal = itemPrice * quantity;

      totalPrice += subtotal;
    } else {
      print('Warning: Item "$itemName" not found in prices map.');
    }
  });

  return totalPrice;
}

void main() {
  Map<String, double> cart = {
    'Apple': 3,
    'Banana': 2,
    'Orange': 1,
    'Mango': 4,
    'Pineapple': 2,
  };

  Map<String, double> prices = {
    'Apple': 1.0,
    'Banana': 0.5,
    'Orange': 0.75,
    'Mango': 1.5,
  };

  double totalPrice = calculateTotalPrice(cart, prices);
  print('Total Price: \$${totalPrice.toStringAsFixed(2)}');
}
