class UserCart {
  String usercart;
  String storeId;
  String storeName;
  List<Cart> cart;

  UserCart({this.usercart, this.storeId, this.storeName, this.cart});

  UserCart.fromJson(Map<String, dynamic> json) {
    usercart = json['usercart'];
    storeId = json['storeId'];
    storeName = json['storeName'];
    if (json['cart'] != null) {
      cart = <Cart>[];
      json['cart'].forEach((v) {
        cart.add(new Cart.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['usercart'] = this.usercart;
    data['storeId'] = this.storeId;
    data['storeName'] = this.storeName;
    if (this.cart != null) {
      data['cart'] = this.cart.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Cart {
  String productId;
  String productName;
  int productPrice;
  int quantity;

  Cart({this.productId, this.productName, this.productPrice, this.quantity});

  Cart.fromJson(Map<String, dynamic> json) {
    productId = json['productId'];
    productName = json['productName'];
    productPrice = json['productPrice'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['productId'] = this.productId;
    data['productName'] = this.productName;
    data['productPrice'] = this.productPrice;
    data['quantity'] = this.quantity;
    return data;
  }
}
