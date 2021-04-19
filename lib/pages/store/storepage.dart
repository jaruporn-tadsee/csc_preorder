import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:flutter/material.dart';

class StoreFront extends StatefulWidget {
  @override
  _StoreFrontState createState() => _StoreFrontState();
}

class _StoreFrontState extends State<StoreFront> {
  final products = ['Product1', 'Product2'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Scaffold(
            appBar: new AppBar(
              title: new Text(
                "StoreName",
              ),
              actions: [Icon(Icons.share)],
              elevation: 0,
            ),
            body: Container(
              child: Column(
                children: [
                  buildBanner(),
                  Wrap(
                    spacing: 4, // gap between adjacent chips
                    runSpacing: 8, // gap between lines
                    children: <Widget>[
                      for (var item in products)
                        listOfProduct(context, item.indexOf(item)),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  InkWell listOfProduct(BuildContext context, index) {
    return InkWell(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.48,
        child: Column(
          children: [
            Container(
                child: Image(
              image: NetworkImage(
                  'https://img.wongnai.com/p/1968x0/2019/03/15/82df1e50644f4c97a0890913cac6bc1d.jpg'),
            )),
            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    child: Text(
                      'ProductName',
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    child: Text(
                      '฿ ProductPrice',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      onTap: () {},
      onLongPress: () {
        showActionSheet(context);
      },
    );
  }

  void showActionSheet(BuildContext context) {
    showAdaptiveActionSheet(
      context: context,
      title: const Text(
        'เกี่ยวกับสินค้า',
        style: TextStyle(fontSize: 20),
      ),
      actions: <BottomSheetAction>[
        BottomSheetAction(
          title: const Text(
            'เพิ่มลงตระกร้าสินค้า',
            style: TextStyle(fontSize: 18),
          ),
          onPressed: () {},
          leading: const Icon(Icons.add_shopping_cart, color: Colors.red),
        ),
        BottomSheetAction(
          title: const Text(
            'แชร์',
            style: TextStyle(fontSize: 18),
          ),
          onPressed: () {},
          leading: const Icon(Icons.share, color: Colors.blue),
        ),
      ],
      cancelAction: CancelAction(
          title: const Text(
        'ยกเลิก',
        style: TextStyle(fontSize: 18, color: Colors.red),
      )),
    );
  }

  Card buildBanner() {
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
                ]),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
