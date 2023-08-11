class ProductModel {
  late int _id;
  late String _nameProduct;
  late double _quantity;

  ProductModel(this._id, this._nameProduct, this._quantity);

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  String get nameProduct => _nameProduct;

  set nameProduct(String value) {
    _nameProduct = value;
  }

  double get quantity => _quantity;

  set quantity(double value) {
    _quantity = value;
  }
}
