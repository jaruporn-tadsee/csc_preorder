import 'package:csc_preorder/user.dart';
import 'package:flutter/material.dart';
import 'search.dart';
import 'alert.dart';
import 'menu_page.dart';

class PreOrder extends StatelessWidget {
  static String tag = 'pre-order';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CSC Pre-Order',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(

            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                      Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MenuPage()),
                  );
                  },
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
              },
            ),
            actions: <Widget>[ 
              
              IconButton(
                icon: const Icon(Icons.search),
                tooltip: 'Show Snackbar',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Search()),
                  );
                },
              ),
              IconButton(
                icon: const Icon(Icons.account_circle_outlined ),
                tooltip: 'User',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => User()),
                  );
                },
              ),
              IconButton(
                icon: const Icon(Icons.notifications_none),
                tooltip: 'Show Snackbar',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Alert()),
                  );
                },
              ),
            ],
            bottom: TabBar(
              tabs: [
                Tab(text: 'หน้าแรก'),
                Tab(text: 'ติดตาม'),
              ],
            ),
            title: Text('CSC Pre-Order'),
          ),
        ),
      ),
    );
  }
}
