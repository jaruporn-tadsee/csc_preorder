import 'package:flutter/material.dart';
import 'package:csc_preorder_beta/models/globalList.dart';

class ShoppingCart extends StatefulWidget {
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  bool _editCart = false;
  bool _editList = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ตระกร้าสินค้า'),
        actions: [
          IconButton(
            onPressed: () => {
              setState(() {
                _editCart = !_editCart;
              })
            },
            icon: _editCart ? Icon(Icons.check) : Icon(Icons.edit),
          )
        ],
      ),
      body: ListView.builder(
          itemBuilder: (BuildContext context, int index) => cartBuilder(cart),
          itemCount: cart.length),
    );
  }

  Container cartBuilder(Object cart) {
    bool _elist = _editList;
    return Container(
      child: Card(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () => _elist = !_elist,
                    icon: _elist
                        ? Icon(Icons.check_box)
                        : Icon(Icons.check_box_outline_blank))
              ],
            )
          ],
        ),
      ),
    );
  }
}
