
import 'package:merchnest/features/products/models/product.dart';

class ProductService {
  Future<List<Product>> fetchAll() async {
    await Future.delayed(const Duration(milliseconds: 400)); // fake API
    return [
      Product(id: '1', name: 'Apples', price: 1.99),
      Product(id: '2', name: 'Bananas', price: 0.99),
      Product(id: '3', name: 'Grapes', price: 2.49),
    ];
  }
}
