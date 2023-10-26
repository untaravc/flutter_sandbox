import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/product.dart';

class ProductList extends StatefulWidget {
  static const nameRoute = "/product_list";

  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List<Product> productList = [
    Product(
        title: "Jam",
        imageUrl:
            'https://imgix2.ruangguru.com/assets/miscellaneous/png_0j9lmw_6986.png',
        price: 23000,
        description: "Ini adalah jam tangan"),
    Product(
        title: "Gajah",
        imageUrl:
            'https://ichef.bbci.co.uk/news/640/cpsprodpb/10D74/production/_126208986_wed5.jpg',
        price: 2000,
        description: "Ini adalah G ajah"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Product List")),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return GridTile(
            child: Image.network(productList[index].imageUrl),
          );
        },
        itemCount: productList.length,
      ),
    );
  }
}
