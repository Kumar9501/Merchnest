import 'package:flutter/foundation.dart';
import 'package:merchnest/services/api/product_service.dart';
import '../models/product.dart';

class ProductController extends ChangeNotifier {
  final ProductService _service;
  ProductController(this._service);

  List<Product> _items = [];
  bool _loading = false;

  List<Product> get items => _items;
  bool get loading => _loading;

  Future<void> load() async {
    _loading = true;
    notifyListeners();
    _items = await _service.fetchAll();
    _loading = false;
    notifyListeners();
  }
}
