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

  Container onDeliveryTab() => Container();
  Container onSuccessTab() => Container();
}
