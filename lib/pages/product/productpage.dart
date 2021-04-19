import 'package:badges/badges.dart';
import 'package:csc_preorder_beta/pages/store/storepage.dart';
import 'package:csc_preorder_beta/pages/user/shopping_cart.dart';
import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Scaffold(
            extendBodyBehindAppBar: true,
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              actions: [
                Badge(
                    position: BadgePosition.topStart(top: 5, start: 5),
                    badgeContent: Text('2'),
                    child: IconButton(
                        icon: Icon(Icons.shopping_cart),
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ShoppingCart()))))
              ],
            ),
            body: buildBody(),
            bottomNavigationBar: buildButtomNav(),
          )
        ],
      ),
    );
  }

  Container buildButtomNav() {
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
          child: Container(
            decoration: BoxDecoration(
                color: Colors.orange, borderRadius: BorderRadius.circular(5)),
            child: TextButton.icon(
              onPressed: () => {},
              icon: Icon(
                Icons.add_shopping_cart,
                color: Colors.white,
              ),
              label: Text(
                'เพิ่มลงรถเข็น',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ));
  }

  Container buildBody() {
    return Container(
      child: Column(
        children: [
          Container(
            height: 300,
            child: Image(
                image: NetworkImage(
                    'https://img.wongnai.com/p/1968x0/2019/03/15/82df1e50644f4c97a0890913cac6bc1d.jpg')),
          ),
          buildProductInfo(),
        ],
      ),
    );
  }

  Padding buildProductInfo() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            child: Container(
              width: double.infinity,
              child: Text(
                'Product Name',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            child: Container(
              width: double.infinity,
              child: Text(
                '฿ Price',
                style: TextStyle(color: Colors.amber, fontSize: 18),
              ),
            ),
          ),
          buildShopNavigate(),
          Container(
            width: double.infinity,
            child: Text(
              'product description',
              maxLines: 10,
              style: TextStyle(color: Colors.black54),
            ),
          )
        ],
      ),
    );
  }

  Card buildShopNavigate() {
    return Card(
      child: Row(
        children: [
          Container(
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: EdgeInsets.all(5),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.blue,
                  foregroundImage: NetworkImage(
                      'https://scontent.fbkk12-4.fna.fbcdn.net/v/t1.6435-9/155406549_116386730461605_343456858841164141_n.jpg?_nc_cat=110&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeHWSlqt--MRD4UnQC_dingjrp8z7-2X-4-unzPv7Zf7j0BORyseUefsJ9sHdljPn881YXxFXDXD4-gY1d44bv_r&_nc_ohc=-HCfMr8a3XoAX8Q022x&_nc_ht=scontent.fbkk12-4.fna&oh=e4beda2a40e4f298f235189c2f459b0a&oe=609E7966'),
                ),
              ),
            ),
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.all(5),
            child: Column(
              children: [
                Row(children: [
                  SizedBox(
                    child: Container(
                      child: Text(
                        "ร้านยำนายปัง",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StoreFront()));
                    },
                    child: Text('ดูร้านค้า'),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  )
                ]),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
