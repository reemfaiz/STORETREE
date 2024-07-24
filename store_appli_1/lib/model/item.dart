class Item {
  String imgPath;
  double price;
  String name;
  String loct;

  Item({
    required this.imgPath,
    required this.price,
    required this.name,
  this.loct = "Fiower Shop",
  });
}

final List<Item> items = [
  Item(name: "pro1", price: 12.99, imgPath: "asset/1.webp"),
  Item(name: "pro2", price: 212.99, imgPath: "asset/2.webp"),
  Item(name: "pro2", price: 312.99, imgPath: "asset/3.webp"),
  Item(name: "pro3", price: 129.99, imgPath: "asset/4.webp"),
  Item(name: "pro4", price: 132.99, imgPath: "asset/5.webp"),
  Item(name: "pro5", price: 112.99, imgPath: "asset/6.webp"),
  Item(name: "pro6", price: 124.99, imgPath: "asset/7.webp"),
  Item(name: "pro7", price: 112.99, imgPath: "asset/8.webp"),
];
