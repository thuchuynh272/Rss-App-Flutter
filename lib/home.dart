import 'package:first_state_management/economic-development.dart';
import 'package:first_state_management/health.dart';
import 'package:first_state_management/sreach.dart';
import 'package:flutter/material.dart';
import 'europerss.dart';
import 'education.dart';

// void main() async {
//   runApp(MaterialApp(
//     home: MyAppState(),
//   ));
// }

class MyAppState extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyAppState> with TickerProviderStateMixin {
  TabController _tabController; // use this instead of DefaultTabController

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: 4, vsync: this); // initialise it here
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
            bottom: TabBar(
              indicatorColor: Colors.white,
              labelStyle: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Family Name'),
              unselectedLabelStyle:
                  TextStyle(fontSize: 15.0, fontFamily: 'Family Name'),
              controller: _tabController,
              isScrollable: true,
              tabs: [
                Tab(text: "Europe"),
                Tab(text: "Health"),
                Tab(text: "Economic & Development"),
                Tab(text: "Culture & Education"),
              ],
            ),
            centerTitle: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'News App',
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                      fontSize: 25.0,
                      fontFamily: 'Indies'),
                ),
                IconButton(
                  icon: new Icon(Icons.search),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SearchScreen()),
                    );
                  },
                ),
              ],
            )),
        body: TabBarView(
          children: [
            // these are your pages
            EuropeRss(),
            HealthRss(),
            EconomicDevelopmentRss(),
            CultureAndEducationRss(),
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}
