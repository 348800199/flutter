import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;
  Product(this.title, this.description);
}

class ProductHome extends StatelessWidget {
  const ProductHome({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ProductList(
      products: List.generate(20, (i) => Product('商品 $i', '这是一个商品详情，编号为:$i')),
    );
  }
}

class ProductList extends StatelessWidget {
  final List<Product> products;
  const ProductList({Key key, @required this.products}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('商品列表')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].title),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return ProductDetails(products: products[index]);
                },
              ))
            },
          );
        },
      ),
    );
  }
}

class ProductDetails extends StatelessWidget {
  final Product products;
  ProductDetails({Key key, this.products}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${products.title}')),
    );
  }
}
