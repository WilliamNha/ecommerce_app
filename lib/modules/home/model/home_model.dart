List imageSliderList = [
  'assets/images/home/slider/controller.jpg',
  'assets/images/home/slider/headphone.jpg',
  'assets/images/home/slider/keyboard.jpg',
  'assets/images/home/slider/macbook.jpg',
  'assets/images/home/slider/watch.jpg',
];

List categoryIconList = [
  'assets/images/home/category/shirt.svg',
  'assets/images/home/category/shoes.svg',
  'assets/images/home/category/bag.svg',
  'assets/images/home/category/electronic.svg',
  'assets/images/home/category/watch.svg',
  'assets/images/home/category/jewelry.svg',
  'assets/images/home/category/kitchen.svg',
  'assets/images/home/category/toy.svg',
];

List categoryTitleList = [
  'Clothes',
  'Shoes',
  'Bags',
  'Electronic',
  'Watches',
  'Jewelrys',
  'Kitchens',
  'Toys',
];

List chipList = [
  'All',
  'Clothes',
  'Shoes',
  'Bags',
  'Electronic',
  'Watches',
  'Jewelrys',
  'Kitchens',
  'Toys'
];

class ProductModel {
  String? title;
  String? description;
  double? price;
  String? rating;
  int? soldAmount;
  String? image;

  ProductModel({
    this.title,
    this.description,
    this.price,
    this.rating,
    this.soldAmount,
    this.image,
  });
}

List productModelTypeList = [
  [],
  clothesProductModelList,
  [],
  [],
  [],
  [],
  [],
  [],
];

List clothesProductModelList = [
  ProductModel(
    title: 'Venesa Long Shirt',
    description: "New product Arrived",
    price: 18,
    rating: '4.2',
    soldAmount: 23,
    image: 'assets/images/home/product/clothes/clothes1.jpeg',
  ),
  ProductModel(
    title: 'Werolla Cardigans',
    description: "New product Arrived",
    price: 29,
    rating: '4.5',
    soldAmount: 70,
    image: 'assets/images/home/product/clothes/clothes2.jpeg',
  ),
  ProductModel(
    title: 'Viyara Ma Blazer',
    description: "New product Arrived",
    price: 35,
    rating: '4.6',
    soldAmount: 50,
    image: 'assets/images/home/product/clothes/clothes3.jpeg',
  ),
  ProductModel(
    title: 'Moco Blue Suit',
    description: "New product Arrived",
    price: 22,
    rating: '4.8',
    soldAmount: 502,
    image: 'assets/images/home/product/clothes/clothes4.jpeg',
  ),
  ProductModel(
    title: 'Viyara Ma Blazer',
    description: "New product Arrived",
    price: 13,
    rating: '4.2',
    soldAmount: 200,
    image: 'assets/images/home/product/clothes/clothes5.jpeg',
  ),
  ProductModel(
    title: 'Moco Blue Suit',
    description: "New product Arrived",
    price: 23,
    rating: '4.5',
    soldAmount: 300,
    image: 'assets/images/home/product/clothes/clothes6.jpeg',
  ),
];
