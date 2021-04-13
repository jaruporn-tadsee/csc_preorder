import 'package:csc_preorder_beta/models/dataModel.dart';
import 'package:csc_preorder_beta/pages/loginpage.dart';
import 'package:csc_preorder_beta/pages/search.dart';
import 'package:csc_preorder_beta/pages/shopping_cart.dart';
import 'package:csc_preorder_beta/pages/store.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class HomePage extends StatefulWidget {
  final User user;
  HomePage(this.user, {Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: buildDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'CSC-PreOrder',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SearchPage()))
                  }),
          IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ShoppingCart()))
                  })
        ],
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index) =>
              postBuilder(postsJson, context),
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
          itemCount: postsJson.length),
    );
  }

  Drawer buildDrawer() {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          child: Column(
            children: [
              Column(
                children: [
                  Text('Drawer Header'),
                  Text(widget.user.email, style: TextStyle(fontSize: 16)),
                ],
              ),
            ],
          ),
          decoration: BoxDecoration(color: Colors.orange),
        ),
        ListTile(
          leading: Icon(Icons.all_inbox),
          title: Text('การซื้อของฉัน'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('ตั้งค่าโปรไฟล์'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text('ออกจากระบบ'),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage()));
          },
        ),
      ],
    ));
  }

  void showActionSheet(BuildContext context) {
    showCupertinoModalPopup(
        context: context,
        builder: (_) => CupertinoActionSheet(
              actions: [
                CupertinoActionSheetAction(
                    onPressed: () => {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.info_outline_rounded),
                        Text('รายงานร้านค้า'),
                      ],
                    )),
                CupertinoActionSheetAction(
                    onPressed: () => {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.storefront),
                        Text('ไปที่ร้านค้า'),
                      ],
                    )),
                CupertinoActionSheetAction(
                    onPressed: () => {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.share),
                        Text('แชร์'),
                      ],
                    )),
              ],
              cancelButton: CupertinoActionSheetAction(
                onPressed: () => {Navigator.of(context).pop()},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.cancel_presentation),
                    Text('ยกเลิก'),
                  ],
                ),
              ),
            ));
  }

  InkWell postBuilder(Object postJson, context) {
    return InkWell(
      onTap: () => {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => StoreFront()))
      },
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
                        Expanded(
                            child: Text(
                          'ร้านยำแซ่บ BY นายปัง',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )),
                        IconButton(
                          onPressed: () => {showActionSheet(context)},
                          icon: Icon(Icons.more_horiz),
                        )
                      ]),
                      Text(
                        'ส่งวันที่ : ' +
                            formatDate(DateTime(2021, 4, 12),
                                [dd, ' - ', mm, ' - ', yyyy]),
                      )
                    ],
                  ),
                ))
              ],
            ),
            Container(
              child: Wrap(
                children: [
                  Container(
                    child: Image(
                        image: NetworkImage(
                            'https://img.wongnai.com/p/1968x0/2019/03/15/82df1e50644f4c97a0890913cac6bc1d.jpg')),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  InkWell(
                      onTap: () => {},
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'menuName',
                            ),
                          )),
                          Container(
                            child: Text('Price'),
                            padding: EdgeInsets.only(right: 10),
                          ),
                          Container(
                            child: Text('available'),
                            padding: EdgeInsets.all(10),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void signOut(BuildContext context) {
    _auth.signOut();
    print("Signed out");
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
        ModalRoute.withName('/'));
  }
}
