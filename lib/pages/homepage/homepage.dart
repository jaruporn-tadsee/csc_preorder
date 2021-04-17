import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:csc_preorder_beta/models/dataModel.dart';
import 'package:csc_preorder_beta/pages/homepage/gen_post.dart';
import 'package:csc_preorder_beta/pages/login/loginpage.dart';
import 'package:csc_preorder_beta/pages/order/orderpage.dart';
import 'package:csc_preorder_beta/pages/product/productpage.dart';
import 'package:csc_preorder_beta/pages/user/profilepage.dart';
import 'package:csc_preorder_beta/pages/homepage/search.dart';
import 'package:csc_preorder_beta/pages/user/shopping_cart.dart';
import 'package:csc_preorder_beta/pages/store/storepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomePage extends StatefulWidget {
  final User user;

  HomePage(this.user, {Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  GeneratePost posts = GeneratePost.fromJson(genPost);
  @override
  initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: buildDrawer(),
      appBar: buildAppBar(context),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index) =>
              postBuilder(posts, context),
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
          itemCount: posts.genPost.length),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
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
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => OrderPage()));
          },
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('ตั้งค่าโปรไฟล์'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProfilePage()));
          },
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text('ออกจากระบบ'),
          onTap: () {
            _auth.signOut().then((data) {
              return googleSignIn.signOut();
            }).then((data) {
              print("Sign-out successfully");
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            }).catchError((e) {
              print(e);
            });
          },
        ),
      ],
    ));
  }

  void showActionSheet(BuildContext context) {
    showAdaptiveActionSheet(
      context: context,
      title: const Text(
        'เกี่ยวกับโพสต์',
        style: TextStyle(fontSize: 20),
      ),
      actions: <BottomSheetAction>[
        BottomSheetAction(
          title: const Text(
            'รายงานร้านค้า',
            style: TextStyle(fontSize: 18),
          ),
          onPressed: () {},
          leading: const Icon(Icons.info, color: Colors.red),
        ),
        BottomSheetAction(
          title: const Text(
            'ไปที่ร้านค้า',
            style: TextStyle(fontSize: 18),
          ),
          onPressed: () => {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => StoreFront()))
          },
          leading: const Icon(Icons.storefront, color: Colors.orange),
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

  Container postBuilder(Object postJson, context) {
    return Container(
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
                        Expanded(
                            child: Text(
                          "ร้านยำนายปัง",
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
            slideShowImage(),
            listOfMenu(),
          ],
        ),
      ),
    );
  }

  Container listOfMenu() {
    return Container(
      padding: EdgeInsets.only(left: 20),
      alignment: Alignment.topLeft,
      child: Column(
        children: [
          InkWell(
              onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Product()))
                  },
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.all(10),
                    child: Text(""),
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
    );
  }

  Container slideShowImage() {
    return Container(
      child: Image(
          image: NetworkImage(
              'https://img.wongnai.com/p/1968x0/2019/03/15/82df1e50644f4c97a0890913cac6bc1d.jpg')),
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
