import 'package:csc_preorder_beta/pages/homepage/homepage.dart';
import 'package:date_format/date_format.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  final List<Tab> tabs = [
    Tab(text: 'ที่ต้องได้รับ'),
    Tab(text: 'สำเร็จ'),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: buildTabs(),
    );
  }

  Builder buildTabs() => Builder(builder: (BuildContext context) {
        final TabController tabController = DefaultTabController.of(context);
        tabController.addListener(() {
          if (!tabController.indexIsChanging) {}
        });
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  final FirebaseAuth _auth = FirebaseAuth.instance;
                  User user = _auth.currentUser;
                  if (user != null) {
                    print("Already signed-in with ${user.email}");
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomePage(user)));
                  }
                }),
            title: Text('คำสั่งซื้อของฉัน'),
            bottom: TabBar(
              tabs: tabs,
            ),
          ),
          body: TabBarView(
            children: [onDeliveryTab(), onSuccessTab()],
          ),
        );
      });

  Container onDeliveryTab() => Container(
          child: ListView.builder(
        itemBuilder: (BuildContext context, int index) => onDeliveryList(),
        itemCount: 2,
      ));
  Container onSuccessTab() => Container(
          child: ListView.builder(
        itemBuilder: (BuildContext context, int index) => onSuccessList(),
        itemCount: 2,
      ));
}

onDeliveryList() {
  return Container(
    child: Card(
      child: Column(
        children: [
          // header
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(4),
                child: CircleAvatar(
                  backgroundColor: Colors.amber,
                ),
              ),
              Container(
                child: Text(
                  'StoreName',
                  style: TextStyle(color: Colors.black45),
                ),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.only(right: 8),
                child: Text(
                  'จัดส่งวันที่ : ' +
                      formatDate(
                          DateTime(2021, 4, 12), [dd, ' - ', mm, ' - ', yyyy]),
                  style: TextStyle(
                    color: Colors.amber,
                  ),
                ),
              )
            ],
          ),
          // body of list
          Container(
            child: Column(
              children: [
                ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: SizedBox(
                      child: Image(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            'https://scontent.fbkk12-3.fna.fbcdn.net/v/t1.6435-9/163565193_120840966682848_3524140195171092480_n.jpg?_nc_cat=102&ccb=1-3&_nc_sid=8bfeb9&_nc_eui2=AeGU4HkUu9I2TRINDVbP84aHBOekn3VROHoE56SfdVE4ekn-Yw3VC0edHzbDgRQlrH-jQGx64F3hENJD0xJX_6r7&_nc_ohc=DpDPigREQzwAX-51Ia8&_nc_ht=scontent.fbkk12-3.fna&oh=0cc685abeb2af59843286bb143a333af&oe=60A0A7AC'),
                      ),
                    ),
                  ),
                  title: Text('productName'),
                  trailing: Text("฿productPrice" + " x" + "quantity"),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

onSuccessList() {
  return Container(
    child: Card(
      child: Column(
        children: [
          // header
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(4),
                child: CircleAvatar(
                  backgroundColor: Colors.amber,
                ),
              ),
              Container(
                child: Text(
                  'StoreName',
                  style: TextStyle(color: Colors.black45),
                ),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.only(right: 8),
                child: Text(
                  'สำเร็จ',
                  style: TextStyle(
                    color: Colors.amber,
                  ),
                ),
              )
            ],
          ),
          // body of list
          Container(
            child: Column(
              children: [
                ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: SizedBox(
                      child: Image(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            'https://scontent.fbkk12-3.fna.fbcdn.net/v/t1.6435-9/163565193_120840966682848_3524140195171092480_n.jpg?_nc_cat=102&ccb=1-3&_nc_sid=8bfeb9&_nc_eui2=AeGU4HkUu9I2TRINDVbP84aHBOekn3VROHoE56SfdVE4ekn-Yw3VC0edHzbDgRQlrH-jQGx64F3hENJD0xJX_6r7&_nc_ohc=DpDPigREQzwAX-51Ia8&_nc_ht=scontent.fbkk12-3.fna&oh=0cc685abeb2af59843286bb143a333af&oe=60A0A7AC'),
                      ),
                    ),
                  ),
                  title: Text('productName'),
                  trailing: Text("฿productPrice" + " x" + "quantity"),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
