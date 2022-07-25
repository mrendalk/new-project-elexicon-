class Product {
  final String imageUrl;
  final String name;
  //final String description;
  final double price;
  const Product({
    required this.imageUrl,
    required this.name,
    //required this.description,
    required this.price,
  });

  static const List<Product> products = [
    Product(
        imageUrl:
            "https://th.bing.com/th/id/OIP.rLJcznWI2C1zS0odPwGIOgHaFj?w=238&h=180&c=7&r=0&o=5&dpr=1.25&pid=1.7",
        name: "በያይነት",
        //description: "description",
        price: 2.99),
    Product(
        imageUrl:
            "https://www.bing.com/th?id=Av8t51fyiVrXYiQ480x360&w=200&h=200&c=7&rs=1&qlt=80&o=6&cdv=1&dpr=1.25&pid=Local",
        name: "Burger",
        //description: "description",
        price: 47.6),
        Product(
        imageUrl:
            "https://www.bing.com/th?id=AGiJ59Cm8KxhcxQ480x360&w=200&h=200&c=7&rs=1&qlt=80&o=6&cdv=1&dpr=1.25&pid=Local",
        name: "ዶሮ chicken",
        //description: "description",
        price: 59.9)
  ];
}
