import 'package:flutter/material.dart';

List imageSliderList = [
  'assets/images/home/slider/controller.jpeg',
  'assets/images/home/slider/headphone.jpeg',
  'assets/images/home/slider/keyboard.jpeg',
  'assets/images/home/slider/macbook.jpeg',
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

class CartItemModel {
  String? image;
  String? title;
  String? size;
  Color? color;
  String? price;
  CartItemModel({this.image, this.title, this.size, this.color, this.price});
}

List cartItemList = [
  CartItemModel(
      title: 'Werolla Cadigans',
      color: Colors.grey,
      size: 'M',
      price: '180.00',
      image: 'assets/images/home/product/clothes/clothes2.jpeg'),
  CartItemModel(
      title: 'Suga Leather',
      color: Colors.black,
      size: 'S',
      price: '400.00',
      image: 'assets/images/home/product/shoes/shoes2.jpeg'),
  CartItemModel(
      title: 'Vinia Calora',
      color: Colors.orange,
      size: 'M',
      price: '340.00',
      image: 'assets/images/home/product/bags/bag2.jpeg'),
  CartItemModel(
      title: 'Werolla Cadigans',
      color: Colors.green,
      size: 'L',
      price: '250.00',
      image: 'assets/images/home/product/electronic/electronic2.jpeg'),
  CartItemModel(
      title: 'Suga Vangora',
      color: Colors.yellow,
      size: 'L',
      price: '368.00',
      image: 'assets/images/home/product/electronic/electronic4.jpeg'),
];

List orderItemList = [
  CartItemModel(
      title: 'Suga Lim Shoes',
      color: Colors.grey,
      size: '41',
      price: '200.00',
      image: 'assets/images/home/product/shoes/shoes4.jpeg'),
  CartItemModel(
      title: 'Werolla Cardigans',
      color: Colors.black,
      size: 'M',
      price: '375.00',
      image: 'assets/images/home/product/clothes/clothes5.jpeg'),
  CartItemModel(
      title: 'Vinia Headphone',
      color: Colors.black,
      price: '340.00',
      image: 'assets/images/home/product/electronic/electronic6.jpeg'),
  CartItemModel(
      title: 'Zonio Super Watch',
      color: Colors.brown,
      price: '250.00',
      image: 'assets/images/home/product/watch/watch1.jpeg'),
];
List orderItemListCompleted = [
  CartItemModel(
      title: 'Suga Lim Shoes',
      color: Colors.grey,
      size: '41',
      price: '200.00',
      image: 'assets/images/home/product/shoes/shoes5.jpeg'),
  CartItemModel(
      title: 'Werolla Cardigans',
      color: Colors.blue,
      size: 'M',
      price: '375.00',
      image: 'assets/images/home/product/clothes/clothes6.jpeg'),
  CartItemModel(
      title: 'Vinia Headphone',
      color: Colors.black,
      price: '340.00',
      image: 'assets/images/home/product/electronic/electronic3.jpeg'),
  CartItemModel(
      title: 'Zonio Super Watch',
      color: Colors.brown,
      price: '250.00',
      image: 'assets/images/home/product/watch/watch6.jpeg'),
];
List allProductModelList = [
  ProductModel(
    title: 'Moco Blue Suit',
    description: "New product Arrived",
    price: 22,
    rating: '4.8',
    soldAmount: 502,
    image: 'assets/images/home/product/clothes/clothes4.jpeg',
  ),
  ProductModel(
    title: 'Werolla Cardigans',
    description: "New product Arrived",
    price: 29,
    rating: '4.5',
    soldAmount: 70,
    image: 'assets/images/home/product/shoes/shoes2.jpeg',
  ),
  ProductModel(
    title: 'Werolla Cardigans',
    description: "New product Arrived",
    price: 29,
    rating: '4.5',
    soldAmount: 70,
    image: 'assets/images/home/product/bags/bag2.jpeg',
  ),
  ProductModel(
    title: 'Werolla Cardigans',
    description: "New product Arrived",
    price: 29,
    rating: '4.5',
    soldAmount: 70,
    image: 'assets/images/home/product/electronic/electronic2.jpeg',
  ),
  ProductModel(
    title: 'Werolla Cardigans',
    description: "New product Arrived",
    price: 29,
    rating: '4.5',
    soldAmount: 70,
    image: 'assets/images/home/product/watch/watch2.jpeg',
  ),
  ProductModel(
    title: 'Werolla Cardigans',
    description: "New product Arrived",
    price: 29,
    rating: '4.5',
    soldAmount: 70,
    image: 'assets/images/home/product/jewelry/jewelry2.jpeg',
  ),
  ProductModel(
    title: 'Werolla Cardigans',
    description: "New product Arrived",
    price: 29,
    rating: '4.5',
    soldAmount: 70,
    image: 'assets/images/home/product/kitchen/kitchen2.jpeg',
  ),
  ProductModel(
    title: 'Werolla Cardigans',
    description: "New product Arrived",
    price: 29,
    rating: '4.5',
    soldAmount: 70,
    image: 'assets/images/home/product/toys/toy2.jpeg',
  ),
];

List productModelTypeList = [
  allProductModelList,
  clothesProductModelList,
  shoesProductModelList,
  bagsProductModelList,
  electronicProductModelList,
  watchProductModelList,
  jewelryProductModelList,
  kitchenProductModelList,
  toyProductModelList,
];
List favoriteProductModelList = [
  ProductModel(
    title: 'Moco Blue Shoes',
    description: "New product Arrived",
    price: 22,
    rating: '4.8',
    soldAmount: 502,
    image: 'assets/images/home/product/shoes/shoes1.jpeg',
  ),
  ProductModel(
    title: 'Werolla Cardigans',
    description: "New product Arrived",
    price: 29,
    rating: '4.5',
    soldAmount: 70,
    image: 'assets/images/home/product/jewelry/jewelry2.jpeg',
  ),
  ProductModel(
    title: 'Werolla Cardigans',
    description: "New product Arrived",
    price: 29,
    rating: '4.5',
    soldAmount: 70,
    image: 'assets/images/home/product/watch/watch3.jpeg',
  ),
  ProductModel(
    title: 'Werolla Cardigans',
    description: "New product Arrived",
    price: 29,
    rating: '4.5',
    soldAmount: 70,
    image: 'assets/images/home/product/watch/watch1.jpeg',
  ),
  ProductModel(
    title: 'Werolla Cardigans',
    description: "New product Arrived",
    price: 29,
    rating: '4.5',
    soldAmount: 70,
    image: 'assets/images/home/product/electronic/electronic4.jpeg',
  ),
  ProductModel(
    title: 'Werolla Cardigans',
    description: "New product Arrived",
    price: 29,
    rating: '4.5',
    soldAmount: 70,
    image: 'assets/images/home/product/electronic/electronic3.jpeg',
  ),
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

List shoesProductModelList = [
  ProductModel(
    title: 'Venesa Long Shirt',
    description: "New product Arrived",
    price: 18,
    rating: '4.2',
    soldAmount: 23,
    image: 'assets/images/home/product/shoes/shoes1.jpeg',
  ),
  ProductModel(
    title: 'Werolla Cardigans',
    description: "New product Arrived",
    price: 29,
    rating: '4.5',
    soldAmount: 70,
    image: 'assets/images/home/product/shoes/shoes2.jpeg',
  ),
  ProductModel(
    title: 'Viyara Ma Blazer',
    description: "New product Arrived",
    price: 35,
    rating: '4.6',
    soldAmount: 50,
    image: 'assets/images/home/product/shoes/shoes3.jpeg',
  ),
  ProductModel(
    title: 'Moco Blue Suit',
    description: "New product Arrived",
    price: 22,
    rating: '4.8',
    soldAmount: 502,
    image: 'assets/images/home/product/shoes/shoes4.jpeg',
  ),
  ProductModel(
    title: 'Viyara Ma Blazer',
    description: "New product Arrived",
    price: 13,
    rating: '4.2',
    soldAmount: 200,
    image: 'assets/images/home/product/shoes/shoes5.jpeg',
  ),
  ProductModel(
    title: 'Moco Blue Suit',
    description: "New product Arrived",
    price: 23,
    rating: '4.5',
    soldAmount: 300,
    image: 'assets/images/home/product/shoes/shoes6.jpeg',
  ),
];

List bagsProductModelList = [
  ProductModel(
    title: 'Venesa Long Shirt',
    description: "New product Arrived",
    price: 18,
    rating: '4.2',
    soldAmount: 23,
    image: 'assets/images/home/product/bags/bag1.jpeg',
  ),
  ProductModel(
    title: 'Werolla Cardigans',
    description: "New product Arrived",
    price: 29,
    rating: '4.5',
    soldAmount: 70,
    image: 'assets/images/home/product/bags/bag2.jpeg',
  ),
  ProductModel(
    title: 'Viyara Ma Blazer',
    description: "New product Arrived",
    price: 35,
    rating: '4.6',
    soldAmount: 50,
    image: 'assets/images/home/product/bags/bag3.jpeg',
  ),
  ProductModel(
    title: 'Moco Blue Suit',
    description: "New product Arrived",
    price: 22,
    rating: '4.8',
    soldAmount: 502,
    image: 'assets/images/home/product/bags/bag4.jpeg',
  ),
  ProductModel(
    title: 'Viyara Ma Blazer',
    description: "New product Arrived",
    price: 13,
    rating: '4.2',
    soldAmount: 200,
    image: 'assets/images/home/product/bags/bag5.jpeg',
  ),
  ProductModel(
    title: 'Moco Blue Suit',
    description: "New product Arrived",
    price: 23,
    rating: '4.5',
    soldAmount: 300,
    image: 'assets/images/home/product/bags/bag6.jpeg',
  ),
];

List electronicProductModelList = [
  ProductModel(
    title: 'Venesa Long Shirt',
    description: "New product Arrived",
    price: 18,
    rating: '4.2',
    soldAmount: 23,
    image: 'assets/images/home/product/electronic/electronic1.jpeg',
  ),
  ProductModel(
    title: 'Werolla Cardigans',
    description: "New product Arrived",
    price: 29,
    rating: '4.5',
    soldAmount: 70,
    image: 'assets/images/home/product/electronic/electronic2.jpeg',
  ),
  ProductModel(
    title: 'Viyara Ma Blazer',
    description: "New product Arrived",
    price: 35,
    rating: '4.6',
    soldAmount: 50,
    image: 'assets/images/home/product/electronic/electronic3.jpeg',
  ),
  ProductModel(
    title: 'Moco Blue Suit',
    description: "New product Arrived",
    price: 22,
    rating: '4.8',
    soldAmount: 502,
    image: 'assets/images/home/product/electronic/electronic4.jpeg',
  ),
  ProductModel(
    title: 'Viyara Ma Blazer',
    description: "New product Arrived",
    price: 13,
    rating: '4.2',
    soldAmount: 200,
    image: 'assets/images/home/product/electronic/electronic5.jpeg',
  ),
  ProductModel(
    title: 'Moco Blue Suit',
    description: "New product Arrived",
    price: 23,
    rating: '4.5',
    soldAmount: 300,
    image: 'assets/images/home/product/electronic/electronic6.jpeg',
  ),
];

List watchProductModelList = [
  ProductModel(
    title: 'Venesa Long Shirt',
    description: "New product Arrived",
    price: 18,
    rating: '4.2',
    soldAmount: 23,
    image: 'assets/images/home/product/watch/watch1.jpeg',
  ),
  ProductModel(
    title: 'Werolla Cardigans',
    description: "New product Arrived",
    price: 29,
    rating: '4.5',
    soldAmount: 70,
    image: 'assets/images/home/product/watch/watch2.jpeg',
  ),
  ProductModel(
    title: 'Viyara Ma Blazer',
    description: "New product Arrived",
    price: 35,
    rating: '4.6',
    soldAmount: 50,
    image: 'assets/images/home/product/watch/watch3.jpeg',
  ),
  ProductModel(
    title: 'Moco Blue Suit',
    description: "New product Arrived",
    price: 22,
    rating: '4.8',
    soldAmount: 502,
    image: 'assets/images/home/product/watch/watch4.jpeg',
  ),
  ProductModel(
    title: 'Viyara Ma Blazer',
    description: "New product Arrived",
    price: 13,
    rating: '4.2',
    soldAmount: 200,
    image: 'assets/images/home/product/watch/watch5.jpeg',
  ),
  ProductModel(
    title: 'Moco Blue Suit',
    description: "New product Arrived",
    price: 23,
    rating: '4.5',
    soldAmount: 300,
    image: 'assets/images/home/product/watch/watch6.jpeg',
  ),
];

List jewelryProductModelList = [
  ProductModel(
    title: 'Venesa Long Shirt',
    description: "New product Arrived",
    price: 18,
    rating: '4.2',
    soldAmount: 23,
    image: 'assets/images/home/product/jewelry/jewelry1.jpg',
  ),
  ProductModel(
    title: 'Werolla Cardigans',
    description: "New product Arrived",
    price: 29,
    rating: '4.5',
    soldAmount: 70,
    image: 'assets/images/home/product/jewelry/jewelry2.jpeg',
  ),
  ProductModel(
    title: 'Viyara Ma Blazer',
    description: "New product Arrived",
    price: 35,
    rating: '4.6',
    soldAmount: 50,
    image: 'assets/images/home/product/jewelry/jewelry3.jpeg',
  ),
  ProductModel(
    title: 'Moco Blue Suit',
    description: "New product Arrived",
    price: 22,
    rating: '4.8',
    soldAmount: 502,
    image: 'assets/images/home/product/jewelry/jewelry4.jpeg',
  ),
  ProductModel(
    title: 'Viyara Ma Blazer',
    description: "New product Arrived",
    price: 13,
    rating: '4.2',
    soldAmount: 200,
    image: 'assets/images/home/product/jewelry/jewelry5.jpeg',
  ),
  ProductModel(
    title: 'Moco Blue Suit',
    description: "New product Arrived",
    price: 23,
    rating: '4.5',
    soldAmount: 300,
    image: 'assets/images/home/product/jewelry/jewelry6.jpeg',
  ),
];

List kitchenProductModelList = [
  ProductModel(
    title: 'Venesa Long Shirt',
    description: "New product Arrived",
    price: 18,
    rating: '4.2',
    soldAmount: 23,
    image: 'assets/images/home/product/kitchen/kitchen1.jpeg',
  ),
  ProductModel(
    title: 'Werolla Cardigans',
    description: "New product Arrived",
    price: 29,
    rating: '4.5',
    soldAmount: 70,
    image: 'assets/images/home/product/kitchen/kitchen2.jpeg',
  ),
  ProductModel(
    title: 'Viyara Ma Blazer',
    description: "New product Arrived",
    price: 35,
    rating: '4.6',
    soldAmount: 50,
    image: 'assets/images/home/product/kitchen/kitchen3.jpeg',
  ),
  ProductModel(
    title: 'Moco Blue Suit',
    description: "New product Arrived",
    price: 22,
    rating: '4.8',
    soldAmount: 502,
    image: 'assets/images/home/product/kitchen/kitchen4.jpeg',
  ),
  ProductModel(
    title: 'Viyara Ma Blazer',
    description: "New product Arrived",
    price: 13,
    rating: '4.2',
    soldAmount: 200,
    image: 'assets/images/home/product/kitchen/kitchen5.jpeg',
  ),
  ProductModel(
    title: 'Moco Blue Suit',
    description: "New product Arrived",
    price: 23,
    rating: '4.5',
    soldAmount: 300,
    image: 'assets/images/home/product/kitchen/kitchen6.jpeg',
  ),
];

List toyProductModelList = [
  ProductModel(
    title: 'Venesa Long Shirt',
    description: "New product Arrived",
    price: 18,
    rating: '4.2',
    soldAmount: 23,
    image: 'assets/images/home/product/toys/toy1.jpeg',
  ),
  ProductModel(
    title: 'Werolla Cardigans',
    description: "New product Arrived",
    price: 29,
    rating: '4.5',
    soldAmount: 70,
    image: 'assets/images/home/product/toys/toy2.jpeg',
  ),
  ProductModel(
    title: 'Viyara Ma Blazer',
    description: "New product Arrived",
    price: 35,
    rating: '4.6',
    soldAmount: 50,
    image: 'assets/images/home/product/toys/toy3.jpeg',
  ),
  ProductModel(
    title: 'Moco Blue Suit',
    description: "New product Arrived",
    price: 22,
    rating: '4.8',
    soldAmount: 502,
    image: 'assets/images/home/product/toys/toy4.jpeg',
  ),
  ProductModel(
    title: 'Viyara Ma Blazer',
    description: "New product Arrived",
    price: 13,
    rating: '4.2',
    soldAmount: 200,
    image: 'assets/images/home/product/toys/toy5.jpeg',
  ),
  ProductModel(
    title: 'Moco Blue Suit',
    description: "New product Arrived",
    price: 23,
    rating: '4.5',
    soldAmount: 300,
    image: 'assets/images/home/product/toys/toy6.jpeg',
  ),
];
