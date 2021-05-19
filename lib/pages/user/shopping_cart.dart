import 'package:csc_preorder_beta/pages/order/comfirm_order.dart';
import 'package:csc_preorder_beta/pages/user/cart.dart';
import 'package:flutter/material.dart';
import 'package:csc_preorder_beta/models/dataModel.dart';

class ShoppingCart extends StatefulWidget {
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  bool _editCart = false;
  bool _editList = false;
  bool _selectList = false;
  int _nofList = 0;
  var userCart = UserCart.fromJson(cart);
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
          itemCount: userCart.cart.length),
      bottomNavigationBar: buildButtomBar(),
    );
  }

  Container cartBuilder(Object cart) {
    return Container(
      child: Card(
        child: Column(
          children: [
            Row(
              children: [
                _editCart
                    ? IconButton(
                        onPressed: () => setState(() => _editList = !_editList),
                        icon: _editList
                            ? Icon(Icons.check_box)
                            : Icon(Icons.check_box_outline_blank))
                    : SizedBox(),
                Expanded(
                  child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            '${userCart.storeName}',
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 10,
                          )
                        ],
                      )),
                ),
                TextButton(
                    onPressed: () => setState(() => _editList = !_editList),
                    child: _editList ? Text('เสร็จสิ้น') : Text('แก้ไข'))
              ],
            ),
            Row(
              children: [
                _editList
                    ? IconButton(
                        onPressed: () =>
                            setState(() => _selectList = !_selectList),
                        icon: _selectList
                            ? Icon(Icons.check_box)
                            : Icon(Icons.check_box_outline_blank))
                    : SizedBox(
                        width: 30,
                      ),
                Container(
                  width: 100,
                  height: 100,
                  child: Image(
                      image: NetworkImage(
                          'https://img.wongnai.com/p/1968x0/2019/03/15/82df1e50644f4c97a0890913cac6bc1d.jpg')),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "ชื่อสินค้า",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text("50฿",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                    Container(
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {},
                            iconSize: 18,
                          ),
                          SizedBox(
                            child: Text("$_nofList"),
                          ),
                          IconButton(
                            icon: Icon(Icons.remove),
                            onPressed: () {},
                            iconSize: 18,
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Container buildButtomBar() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 7),
            ],
            color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text("รวมทั้งหมด"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "100฿",
                  style: TextStyle(
                      color: Colors.orange, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10)),
                child: TextButton(
                  onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ConfirmOrder()))
                  },
                  child: Text(
                    "ชำระเงิน",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
