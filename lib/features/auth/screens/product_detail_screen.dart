import 'package:flutter/material.dart';
import '../../products/models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Center(
        child: Text(
          '${product.name} — \$${product.price.toStringAsFixed(2)}',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
