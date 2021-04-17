class GeneratePost {
  List<GenPost> genPost;

  GeneratePost({this.genPost});

  GeneratePost.fromJson(Map<String, dynamic> json) {
    if (json['genPost'] != null) {
      genPost = <GenPost>[];
      json['genPost'].forEach((v) {
        genPost.add(new GenPost.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.genPost != null) {
      data['genPost'] = this.genPost.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class GenPost {
  String postId;
  String storeId;
  String storeName;
  List<Products> products;

  GenPost({this.postId, this.storeId, this.storeName, this.products});

  GenPost.fromJson(Map<String, dynamic> json) {
    postId = json['postId'];
    storeId = json['storeId'];
    storeName = json['storeName'];
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products.add(new Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['postId'] = this.postId;
    data['storeId'] = this.storeId;
    data['storeName'] = this.storeName;
    if (this.products != null) {
      data['products'] = this.products.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Products {
  String productId;
  String productName;
  int price;

  Products({this.productId, this.productName, this.price});

  Products.fromJson(Map<String, dynamic> json) {
    productId = json['productId'];
    productName = json['productName'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['productId'] = this.productId;
    data['productName'] = this.productName;
    data['price'] = this.price;
    return data;
  }
}
