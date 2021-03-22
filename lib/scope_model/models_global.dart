import 'package:scoped_model/scoped_model.dart';

class UserCart extends Model {
  // Cart Methods
  int cartBadge = 0;

  void incrementCart() {
    cartBadge++;
    notifyListeners();
  }
}
