class Fruit {
  String name, color;
  double price;

  Fruit({required this.name, required this.color, required this.price});
}

void displayFruitDetails(List<Fruit> fruits) {
  fruits.forEach((fruit) {
    print("Name:${fruit.name},Color:${fruit.color},Price:\$${fruit.price}\n");
  });
}

void applyPriceDiscount(List<Fruit> fruits, double discount) {
  discount /= 100;
  fruits.forEach((fruit) {
    fruit.price = fruit.price - ((fruit.price) * discount);
  });
}

void main() {
  List<Fruit> fruits = [
    Fruit(name: "Apple", color: "Red", price: 2.5),
    Fruit(name: "Banana", color: "Yellow", price: 1.0),
    Fruit(name: "Grapes", color: "Purple", price: 3.0),
  ];
  
  print("Original Fruit Details before Discount:\n");
  displayFruitDetails(fruits);

  applyPriceDiscount(fruits, 10);
  print("Fruit Details After Applying 10% Discount:\n");
  displayFruitDetails(fruits);
}
