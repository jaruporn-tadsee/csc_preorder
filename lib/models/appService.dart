class AddToCart {
  static final AddToCart _instance = AddToCart._internal();
  factory AddToCart() => _instance;

  AddToCart._internal() {
    _appCart = [];
  }

  List _appCart;

  List get appCart => _appCart;

  set appCart(Object value) => appCart = value;

  void addProduct(product) => _appCart.add(product);
}
