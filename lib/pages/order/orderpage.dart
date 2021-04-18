import 'package:date_format/date_format.dart';
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
  Container onSuccessTab() => Container();
}

onDeliveryList() {
  return Container(
    child: Card(
      child: Column(
        children: [
          headerBuilder(),
          
        ],
      ),
    ),
  );
}

Row headerBuilder() {
  return Row(
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
        );
}
