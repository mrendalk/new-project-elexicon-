class Product {
  String foodName;
  String subName;
  double price;
  String detail;
  String photoUrl;
  Product(this.foodName, this.subName, this.price, this.detail, this.photoUrl);
}

List<Product> products = [
  Product(
      "Egg with Potato",
      "food commida",
      211,
      "It goes without saying that our pies, pasties and slices are made using the best quality meat and vegetables, with the finest ingredients being added to make our mouth-watering sauces. We’re proud to use only the best, great tasting meat and all our great tasting savouries are guaranteed to be free from all artificial colourings and flavourings.",
      "assets/images/food8.png"),
  Product(
      "special Injera  ",
      "food commida",
      174,
      "It goes without saying that our pies, pasties and slices are made using the best quality meat and vegetables, with the finest ingredients being added to make our mouth-watering sauces. We’re proud to use only the best, great tasting meat and all our great tasting savouries are guaranteed to be free from all artificial colourings and flavourings.",
      "assets/images/food1.png"),
  Product(
      "Moderate mini pizza",
      "food commida",
      294,
      "It goes without saying that our pies, pasties and slices are made using the best quality meat and vegetables, with the finest ingredients being added to make our mouth-watering sauces. We’re proud to use only the best, great tasting meat and all our great tasting savouries are guaranteed to be free from all artificial colourings and flavourings.",
      "assets/images/food2.png"),
  Product(
      "Collection vegitable",
      "food commida",
      423,
      "It goes without saying that our pies, pasties and slices are made using the best quality meat and vegetables, with the finest ingredients being added to make our mouth-watering sauces. We’re proud to use only the best, great tasting meat and all our great tasting savouries are guaranteed to be free from all artificial colourings and flavourings.",
      "assets/images/food4.png"),
  Product(
      "Pepersteck potato",
      "food commida",
      190,
      "It goes without saying that our pies, pasties and slices are made using the best quality meat and vegetables, with the finest ingredients being added to make our mouth-watering sauces. We’re proud to use only the best, great tasting meat and all our great tasting savouries are guaranteed to be free from all artificial colourings and flavourings.",
      "assets/images/food7.png"),
  Product(
      "Beaf meat salad",
      "food commida",
      350,
      "It goes without saying that our pies, pasties and slices are made using the best quality meat and vegetables, with the finest ingredients being added to make our mouth-watering sauces. We’re proud to use only the best, great tasting meat and all our great tasting savouries are guaranteed to be free from all artificial colourings and flavourings.",
      "assets/images/food0.png"),
  Product(
      "Double cheese pizza",
      "food commida",
      240,
      "It goes without saying that, our pies, pasties and slices are made using the best quality meat and vegetables, with the finest ingredients being added to make our mouth-watering sauces. We’re proud to use only the best, great tasting meat and all our great tasting savouries are guaranteed to be free from all artificial colourings and flavourings.",
      "assets/images/food9.png"),
  Product(
      "Eagless Mahberawi",
      "food commida",
      300,
      "It goes without saying that our pies, pasties and slices are made using the best quality meat and vegetables, with the finest ingredients being added to make our mouth-watering sauces. We’re proud to use only the best, great tasting meat and all our great tasting savouries are guaranteed to be free from all artificial colourings and flavourings.",
      "assets/images/food5.png")
];

var productTo = [];

void addProduct(Product product) {
  productTo.add(product);
}

sumValue() {
  for (int i = 0; i < productTo.length; i++) {
    double sum = 0;
    sum += productTo[i].price;
    return sum;
  }
}
