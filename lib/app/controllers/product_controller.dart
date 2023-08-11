import 'package:flutter/material.dart';

import '../models/product_model.dart';

class ProductController {
  TextEditingController nameProd = TextEditingController();
  TextEditingController quantity = TextEditingController();
  List<ProductModel> productList = [];
  late String prodName;
  late double quant = 0;

  ProductController(this.nameProd, this.quantity) {
    prodName = nameProd.text;
    quant = quantity.text != "" ? double.parse(quantity.text) : 0;
    print(quant);
  }
  saveProduct() {
    productList.add(ProductModel(
        // productList.length + 1, prodName, int.tryParse(quant) ?? 403));
        productList.length + 1,
        prodName,
        quant));
  }

  getProduct() {}
  alterProduct() {}
}
