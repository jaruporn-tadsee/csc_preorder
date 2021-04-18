import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:csc_preorder_beta/pages/user/shopping_cart.dart';

class StoreFront extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'ร้านค้า',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ShoppingCart()))
                  })
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // หัวร้าน
            Container(
              child: Card(
                child: Column(
                  children: [
                    Row(
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
                                TextButton(
                                  onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => StoreFront())),
                                  child: SizedBox(
                                    child: Container(
                                      child: Text(
                                        "ร้านยำนายปัง",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ],
                          ),
                        ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // ปุ่ม
            ElevatedButton(
              child: Text('สมัครใช้งาน'),
              onPressed: () => {},
            ),
            Container(
              child: Container(
                child: Card(
                  child: Column(
                    children: [
                      Row(
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
                                  TextButton(
                                    onPressed: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                StoreFront())),
                                    child: SizedBox(
                                      child: Container(
                                        child: Text(
                                          "ร้านยำนายปัง",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  IconButton(
                                    onPressed: () => {},
                                    icon: Icon(Icons.more_horiz),
                                  )
                                ]),
                                SizedBox(
                                  child: Container(
                                    width: double.infinity,
                                    child: Text(
                                      'ส่งวันที่ : ' +
                                          formatDate(DateTime(2021, 4, 12),
                                              [dd, ' - ', mm, ' - ', yyyy]),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
